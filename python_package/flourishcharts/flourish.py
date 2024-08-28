#!/usr/bin/env python
# coding: utf-8

# Copyright (c) Zoe Meers.
# Distributed under the terms of the Modified BSD License.

"""
Create Flourish object.
"""
import os
import importlib.metadata
import pathlib
import requests
import anywidget
import traitlets

try:
    __version__ = importlib.metadata.version("flourishcharts")
except importlib.metadata.PackageNotFoundError:
    __version__ = "unknown"

from . import bindings, details
from ._utils import load_internal_templates


class Flourish(
    anywidget.AnyWidget,
    details.DetailsMixin,
    bindings.DataBindingsMixin,
):
    """Create a Flourish graph.

    :param chart_type: A chart type string for a graph in Flourish's library. Preferred usage compared to template_id and template_version.
    :type chart_type: str, optional
    :param base_visualisation_id: Optional - provide the numerical ID of an existing public Flourish visualisation to reference it's configuration
    :type base_visualisation_id: str, optional
    :param chart_description: A screen-reader description. A text alternative to the visual content that will only be visible to screen-readers, e.g. “The line chart shows China consistently higher than the other countries since 1990”. Do not replicate your title, since that will also be read by screenreaders., defaults to None
    :type chart_description: str, optional
    :param template_id: A template ID, as set by Flourish, found at https://app.flourish.studio/@flourish. Use if you cannot use `chart_type` or `base_visualisation_id`, Defaults to None
    :type template_id: str, optional
    :param template_version_number: A template version number, as set by Flourish, found at https://app.flourish.studio/@flourish. Use if you cannot use `chart_type` or `base_visualisation_id`, Defaults to None
    :type template_version_number: str, optional
    :param width: Width of the graph, defaults to None
    :type width: int, optional
    :param height: Height of the graph, defaults to None
    :type height: int, optional
    :param api_key: Flourish API key, defaults to None
    :type api_key: str, optional
    """

    _esm = pathlib.Path(__file__).parent / "static" / "widget.js"
    _css = pathlib.Path(__file__).parent / "static" / "widget.css"
    _model_data = traitlets.Dict().tag(sync=True)

    def __init__(
        self,
        chart_type: str = None,
        chart_description: str = None,
        base_visualisation_id: str = None,
        template_id: str = None,
        template_version_number: str = None,
        width: int = None,
        height: int = None,
        api_key: str = None,
    ):
        super().__init__()
        self.chart_description = chart_description
        self.chart_type = chart_type
        self.base_visualisation_id = base_visualisation_id
        self.width = width
        self.height = height
        self.state = {}

        # Check for API key
        if api_key is not None:
            self.api_key = api_key
        elif os.environ.get("FLOURISH_API_KEY") is not None:
            self.api_key = os.environ.get("FLOURISH_API_KEY")
        else:
            raise Exception(
                "Flourish API key not found. Please grab a key from Flourish settings "
                "https://app.flourish.studio/settings and add them to your .envrc file."
            )

        # match to a template
        _internal_templates = load_internal_templates()
        if chart_type is not None:
            matched_templates = _internal_templates[
                _internal_templates.chart_type == chart_type
            ].to_dict(orient="records")

            if not matched_templates and chart_type:
                raise Exception(
                    f"The chart type [{chart_type}] is not an exact match with Flourish's available graphs. "
                    f"Find available chart types in `flourishcharts.flourish_api_documentation`, or specify a template ID and version number, or the base visualisation ID of an existing published Flourish graph (if available)."
                )
            if matched_templates and chart_type:
                matched_template = matched_templates[
                    0
                ]  # arbitrarily take the first matching template

                self.template_id = matched_template["template_id"]
                self.template_version = matched_template["template_version"]
                if matched_template["template_id"] == "@flourish/hierarchy":
                    self.state = {"hierarchy_layout": chart_type}
                if matched_template["template_id"] == "@flourish/line-bar-pie":
                    self.state = {"chart_type": chart_type}

        if base_visualisation_id is not None:
            base_viz_object = f"https://public.flourish.studio/visualisation/{base_visualisation_id}/visualisation-object.json"
            base_viz_data = requests.get(base_viz_object)
            if base_viz_data.status_code == 403:
                raise Exception(
                    f"Access denied accessing base visualisation {base_viz_object} - please ensure it is published for public use"
                )
            else:
                base_viz_dict = base_viz_data.json()
                self.template_id = base_viz_dict["template"]
                self.template_version = base_viz_dict["version"]
                self.base_bindings = base_viz_dict["bindings"]
                self.base_data = base_viz_dict["data"]
                self.base_state = base_viz_dict["state"]
                if base_viz_dict["metadata"]:
                    self.base_metadata = base_viz_dict["metadata"]
                else:
                    self.base_metadata = {}
        else:
            self.base_bindings = {}
            self.base_data = {}
            self.base_state = {}
            self.base_metadata = {}

        if chart_type is None and base_visualisation_id is None and template_id is None:
            raise Exception(
                "Error: please enter a chart type, template ID and version number, or the base visualisation ID of an existing published Flourish graph, if available."
            )
        if chart_type is None and base_visualisation_id is None:
            if not template_id and template_version_number is None:
                raise Exception("Error: please specify a template version number.")
            if template_id is None and not template_version_number:
                raise Exception("Error: please specify a template ID.")
            if not template_id and not template_version_number:
                self.template_id = template_id
                self.template_version = template_version_number

        if chart_type is not None and chart_type.startswith(("map", "globe")):
            raise Exception(
                f"The chart type [{chart_type}] is a map template and is currently not supported in this module."
            )

        if base_visualisation_id is not None:
            self._model_data = {
                "state": self.base_state,
                "data": self.base_data,
                "bindings": self.base_bindings,
                "metadata": self.base_metadata,
                "chart_description": self.chart_description,
                "template": self.template_id,
                "version": self.template_version,
                "api_key": self.api_key,
                "width": self.width,
                "height": self.height,
                "base_visualisation_data_format": "object"
            }
        if base_visualisation_id is None:
            self._model_data = {
                "state": self.state,
                "base_visualisation_id": self.base_visualisation_id,
                "data": {"data": list()},  # set an empty list so the base graph builds
                "chart_description": self.chart_description,
                "template": self.template_id,
                "version": self.template_version,
                "api_key": self.api_key,
                "width": self.width,
                "height": self.height
            }

    def __repr__(self):
        return f"Flourish(template_id={self.template_id}, template_version={self.template_version}"
