import os
import inspect
import pandas as pd
from copy import deepcopy


def clean_null_terms(d):
    """Drop null terms

    :param d: dictionary
    """
    clean = {}
    for k, v in d.items():
        if isinstance(v, dict):
            nested = clean_null_terms(v)
            if len(nested.keys()) > 0:
                clean[k] = nested
        elif v is not None:
            clean[k] = v
    return clean


def load_internal_templates() -> pd.DataFrame:
    """Load internal template info (template ID, version number, etc.)

    :return: A data frame detailing info about each template.
    :rtype: pd.DataFrame
    """
    pkg_directory = os.path.dirname(os.path.realpath(__file__))
    path_to_templates = os.path.join(
        pkg_directory, "internal_data", "internal_templates.csv"
    )
    internal_templates = pd.read_csv(path_to_templates)
    return internal_templates


def deep_merge(a: dict, b: dict) -> dict:
    """Deep merge nested dictionaries.

    :param a: First dict
    :type a: dict
    :param b: Second dict
    :type b: dict
    :return: A merged dictionary
    :rtype: dict
    """
    result = deepcopy(a)
    for bk, bv in b.items():
        av = result.get(bk)
        if isinstance(av, dict) and isinstance(bv, dict):
            result[bk] = deep_merge(av, bv)
        else:
            result[bk] = deepcopy(bv)
    return result


def details_error(self):
    """Throw an error if a user applies a function from the DetailsMixin class that cannot be applied to the particular chart type.

    :raises Exception: Throws an Exception stating that the function cannot be applied, highlighting the correct function to use instead.
    """
    _internal_templates = load_internal_templates()
    if self.template_id == "@flourish/line-bar-pie" and self.base_visualisation_id is not None:
        self.chart_type = self.base_state["chart_type"]
        self.template = self.template_id
    if  self.template_id == "@flourish/hierarchy" and self.base_visualisation_id is not None:
        self.chart_type = self.base_state["hierarchy_layout"]
        self.template = self.template_id
    matched_templates = _internal_templates[
        _internal_templates.chart_type == self.chart_type
    ].to_dict(orient="records")
    this_function = inspect.stack()[1].function
    actual_function = (
        "set_" + matched_templates[0]["template_function_name"] + "_details"
    )
    if this_function != actual_function:
        raise Exception(
            f"The function [{this_function}] does not work with this chart type [{self.chart_type}]. Instead the ideal detail-setting function for this chart type is [{actual_function}]."
        )


def bindings_error(self):
    """Throw an error if the user attempts to apply the wrong binding function for a chart type.

    :raises Exception: Throws an Exception stating that the binding function cannot be applied, highlighting the correct function to use instead.
    """
    _internal_templates = load_internal_templates()
    if self.template_id == "@flourish/line-bar-pie" and self.base_visualisation_id is not None:
        self.chart_type = self.base_state["chart_type"]
        self.template = self.template_id
    if  self.template_id == "@flourish/hierarchy" and self.base_visualisation_id is not None:
        self.chart_type = self.base_state["hierarchy_layout"]
        self.template = self.template_id
    matched_templates = _internal_templates[
        _internal_templates.chart_type == self.chart_type
    ].to_dict(orient="records")
    this_function = inspect.stack()[1].function
    actual_bindings_function = (
        "bind_" + matched_templates[0]["template_function_name"] + "_data"
    )
    if this_function != actual_bindings_function:
        raise Exception(
            f"The data bindings function [{this_function}] does not work with this chart type [{self.chart_type}]. Instead the ideal data bindings function is [{actual_bindings_function}]."
        )


def is_every_value_none(iterable):
    for value in iterable:
        if value is not None:
            return False
    return True


def is_every_value_not_none(iterable):
    for value in iterable:
        if value is not None:
            return True
    return False
