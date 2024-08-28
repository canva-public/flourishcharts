#!/usr/bin/env python
# coding: utf-8

# Copyright (c) Zoe Meers.
# Distributed under the terms of the Modified BSD License.

"""
Upload graph to Canva
"""
import io
import json
import os
import subprocess

import requests


class Canva:
    """Upload a Flourish graph to Canva. Only available for internal use."""

    @classmethod
    def _canva_upload(
        cls,
        graph: str = None,
        api_key: str = None,
        name: str = None,
        live_update_id: str = None,
        width: int = 640,
        height: int = 480,
    ):
        """Upload graph to Canva

        :param graph: A graph, defaults to a Flourish graph
        :type graph:  str
        :param api_key: flourishcharts API key, available from the flourishcharts Canva content app,
        :type api_key: str
        :param name: File name, defaults to None
        :type name: str, optional
        :param live_update_id: Live update ID - an ID set by the user to update an existing flourishcharts graph in Canva, defaults to None
        type live_update_id: str, optional
        :raises Exception: Raise exception if API key not provided
        """
        # Check for API key
        if api_key is not None:
            flourish_charts_api_key = api_key
        elif os.environ.get("FLOURISH_CHARTS_API_KEY") is not None:
            flourish_charts_api_key = os.environ.get("FLOURISH_CHARTS_API_KEY")
        else:
            raise Exception(
                "flourishcharts API key not found. Please grab a key from the flourishcharts Canva content app and add the key to your "
                ".envrc file."
            )

        url = "https://canviz.canva-corp.com/upload"
        if type(graph).__name__ == "Flourish":
            flourish_json = json.dumps(graph._model_data)
            files = {
                "file": (
                    "flourish.json",
                    io.StringIO(flourish_json),
                    "application/flourish",
                )
            }
        else:
            raise Exception(
                "We only support uploading Flourish graphs. Depending on usage, we may support uploading different "
                "file types in the future."
            )

        values = dict(width=width, height=height)
        if name is not None:
            values["name"] = name

        if live_update_id is not None:
            values["external_id"] = live_update_id

        response = requests.post(
            url,
            files=files,
            data=values,
            headers={"Authorization": flourish_charts_api_key, "Accept-Encoding": None},
        )
        return response
