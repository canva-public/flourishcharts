from typing import Dict, List, Union
from ._utils import clean_null_terms, deep_merge, bindings_error
import pandas as pd


class DataBindingsMixin:
    def bind_audio_data(
        self,
        data: pd.DataFrame = None,
        url: str = None,
        title: str = None,
        subtitle: str = None,
        filter: str = None,
        url_input_format: str = None,
        url_output_format: str = None,
        subtitle_input_format: str = None,
        subtitle_output_format: str = None,
        title_input_format: str = None,
        title_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
    ):
        """
        Bind data to chart: audio.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param url: Audio URL. The URL of a publicly readable MP3 file. Suggested data type hints: string. Flourish type hint: column
        :type url: str, optional

        :param title: Audio title. Suggested data type hints: string. Flourish type hint: column
        :type title: str, optional

        :param subtitle: Audio subtitle. Suggested data type hints: string. Flourish type hint: column
        :type subtitle: str, optional

        :param filter: Filter. Suggested data type hints: string, number. Flourish type hint: column
        :type filter: str, optional
        :param url_input_format: Formats/parses dates, strings, and numbers for the [url] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type url_input_format: str, optional
        :param url_output_format: Formats/parses dates, strings, and numbers for the [url] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type url_output_format: str, optional
        :param subtitle_input_format: Formats/parses dates, strings, and numbers for the [subtitle] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type subtitle_input_format: str, optional
        :param subtitle_output_format: Formats/parses dates, strings, and numbers for the [subtitle] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type subtitle_output_format: str, optional
        :param title_input_format: Formats/parses dates, strings, and numbers for the [title] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type title_input_format: str, optional
        :param title_output_format: Formats/parses dates, strings, and numbers for the [title] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type title_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {"data": {"url": {}, "subtitle": {}, "title": {}, "filter": {}}}

        if url is not None:
            assert url in data_columns, f"[url] is not a column in the data."
            self.bindings["data"]["url"] = url

        if title is not None:
            assert title in data_columns, f"[title] is not a column in the data."
            self.bindings["data"]["title"] = title

        if subtitle is not None:
            assert subtitle in data_columns, f"[subtitle] is not a column in the data."
            self.bindings["data"]["subtitle"] = subtitle

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if url_output_format is not None:
            if url_input_format is None and url_output_format is not None:
                f"[url_input_format] and [url_output_format] must both be defined."
            elif url_input_format is not None and url_output_format is None:
                f"[url_input_format] and [url_output_format] must both be defined."
            if url_output_format.startswith("%"):
                self.metadata["data"]["url"]["type"] = "datetime"
                self.metadata["data"]["url"]["type_id"] = "datetime$" + url_input_format
                self.metadata["data"]["url"]["output_format_id"] = (
                    "datetime$" + url_output_format
                )
            elif "_" in url_output_format:
                self.metadata["data"]["url"]["type"] = "number"
                self.metadata["data"]["url"]["type_id"] = "number$" + url_input_format
                self.metadata["data"]["url"]["output_format_id"] = (
                    "number$" + url_output_format
                )
            elif (
                url_output_format is not None
                and not url_output_format.startswith("%")
                and "_" not in url_output_format
            ):
                self.metadata["data"]["url"]["type"] = "string"
                self.metadata["data"]["url"]["type_id"] = "string$" + url_input_format
                self.metadata["data"]["url"]["output_format_id"] = (
                    "string$" + url_output_format
                )

        if title_output_format is not None:
            if title_input_format is None and title_output_format is not None:
                f"[title_input_format] and [title_output_format] must both be defined."
            elif title_input_format is not None and title_output_format is None:
                f"[title_input_format] and [title_output_format] must both be defined."
            if title_output_format.startswith("%"):
                self.metadata["data"]["title"]["type"] = "datetime"
                self.metadata["data"]["title"]["type_id"] = (
                    "datetime$" + title_input_format
                )
                self.metadata["data"]["title"]["output_format_id"] = (
                    "datetime$" + title_output_format
                )
            elif "_" in title_output_format:
                self.metadata["data"]["title"]["type"] = "number"
                self.metadata["data"]["title"]["type_id"] = (
                    "number$" + title_input_format
                )
                self.metadata["data"]["title"]["output_format_id"] = (
                    "number$" + title_output_format
                )
            elif (
                title_output_format is not None
                and not title_output_format.startswith("%")
                and "_" not in title_output_format
            ):
                self.metadata["data"]["title"]["type"] = "string"
                self.metadata["data"]["title"]["type_id"] = (
                    "string$" + title_input_format
                )
                self.metadata["data"]["title"]["output_format_id"] = (
                    "string$" + title_output_format
                )

        if subtitle_output_format is not None:
            if subtitle_input_format is None and subtitle_output_format is not None:
                f"[subtitle_input_format] and [subtitle_output_format] must both be defined."
            elif subtitle_input_format is not None and subtitle_output_format is None:
                f"[subtitle_input_format] and [subtitle_output_format] must both be defined."
            if subtitle_output_format.startswith("%"):
                self.metadata["data"]["subtitle"]["type"] = "datetime"
                self.metadata["data"]["subtitle"]["type_id"] = (
                    "datetime$" + subtitle_input_format
                )
                self.metadata["data"]["subtitle"]["output_format_id"] = (
                    "datetime$" + subtitle_output_format
                )
            elif "_" in subtitle_output_format:
                self.metadata["data"]["subtitle"]["type"] = "number"
                self.metadata["data"]["subtitle"]["type_id"] = (
                    "number$" + subtitle_input_format
                )
                self.metadata["data"]["subtitle"]["output_format_id"] = (
                    "number$" + subtitle_output_format
                )
            elif (
                subtitle_output_format is not None
                and not subtitle_output_format.startswith("%")
                and "_" not in subtitle_output_format
            ):
                self.metadata["data"]["subtitle"]["type"] = "string"
                self.metadata["data"]["subtitle"]["type_id"] = (
                    "string$" + subtitle_input_format
                )
                self.metadata["data"]["subtitle"]["output_format_id"] = (
                    "string$" + subtitle_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_bar_chart_race_data(
        self,
        data: pd.DataFrame = None,
        captions_data: pd.DataFrame = None,
        label: str = None,
        values: Union[list, str] = None,
        category: str = None,
        image: str = None,
        captions_from: str = None,
        captions_to: str = None,
        captions_text: str = None,
        captions_image: str = None,
        captions_image_input_format: str = None,
        captions_image_output_format: str = None,
        captions_text_input_format: str = None,
        captions_text_output_format: str = None,
        captions_to_input_format: str = None,
        captions_to_output_format: str = None,
        captions_from_input_format: str = None,
        captions_from_output_format: str = None,
        category_input_format: str = None,
        category_output_format: str = None,
        image_input_format: str = None,
        image_output_format: str = None,
        label_input_format: str = None,
        label_output_format: str = None,
        values_input_format: str = None,
        values_output_format: str = None,
    ):
        """
        Bind data to chart: bar chart race.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional
        :param captions_data: Captions data. defaults to None
        :type captions_data: pd.DataFrame, optional

        :param label: Label. A column containing the names of the bars, e.g. countries or people. Suggested data type hints: string. Flourish type hint: column
        :type label: str, optional

        :param values: Values. Multiple columns of numbers, each column representing a point in time Suggested data type hints: number. Flourish type hint: columns
        :type values: Union[list, str], optional

        :param category: Categories. Optional category column to color the bars Make sure the Color mode setting is set to By Category in the Bar colors settings panel. Suggested data type hints: string. Flourish type hint: column
        :type category: str, optional

        :param image: Image. Optional column with URLs of images. Suggested data type hints: string. Flourish type hint: column
        :type image: str, optional

        :param captions_from: Time to show. Must match the column headers in the main data sheet. Suggested data type hints: string, datetime. Flourish type hint: column
        :type captions_from: str, optional

        :param captions_to: Time to hide. Must match the column headers in the main data sheet. Suggested data type hints: string, datetime. Flourish type hint: column
        :type captions_to: str, optional

        :param captions_text: Text. Text or HTML to show. Suggested data type hints: string. Flourish type hint: column
        :type captions_text: str, optional

        :param captions_image: Image. Image to show. Add an image URL or right-click on a cell to upload an image. Suggested data type hints: string. Flourish type hint: column
        :type captions_image: str, optional
        :param captions_image_input_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_image_input_format: str, optional
        :param captions_image_output_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_image_output_format: str, optional
        :param captions_text_input_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_text_input_format: str, optional
        :param captions_text_output_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_text_output_format: str, optional
        :param captions_to_input_format: Formats/parses dates, strings, and numbers for the [to] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_to_input_format: str, optional
        :param captions_to_output_format: Formats/parses dates, strings, and numbers for the [to] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_to_output_format: str, optional
        :param captions_from_input_format: Formats/parses dates, strings, and numbers for the [from] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_from_input_format: str, optional
        :param captions_from_output_format: Formats/parses dates, strings, and numbers for the [from] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_from_output_format: str, optional
        :param category_input_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_input_format: str, optional
        :param category_output_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_output_format: str, optional
        :param image_input_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_input_format: str, optional
        :param image_output_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_output_format: str, optional
        :param label_input_format: Formats/parses dates, strings, and numbers for the [label] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type label_input_format: str, optional
        :param label_output_format: Formats/parses dates, strings, and numbers for the [label] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type label_output_format: str, optional
        :param values_input_format: Formats/parses dates, strings, and numbers for the [values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type values_input_format: str, optional
        :param values_output_format: Formats/parses dates, strings, and numbers for the [values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type values_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")

        self.bindings["captions"] = {}
        self.data_properties["captions"] = {}
        if captions_data is not None:
            captions_columns = set(captions_data.columns)
            int_columns_captions_data = captions_data.select_dtypes(
                include="int"
            ).columns
            captions_data[int_columns_captions_data] = captions_data[
                int_columns_captions_data
            ].astype(str)
            self.data_properties["captions"] = captions_data.to_dict(orient="records")
        self.metadata = {
            "captions": {"image": {}, "text": {}, "to": {}, "from": {}},
            "data": {"category": {}, "image": {}, "label": {}, "values": {}},
        }

        if label is not None:
            assert label in data_columns, f"[label] is not a column in the data."
            self.bindings["data"]["label"] = label

        if values is not None:
            if isinstance(values, list):
                for col in values:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["values"] = values
            elif isinstance(values, str):
                assert values in data_columns, f"[values] is not a column in the data."
                self.bindings["data"]["values"] = [values]
        else:
            self.bindings["data"]["values"] = []

        if category is not None:
            assert category in data_columns, f"[category] is not a column in the data."
            self.bindings["data"]["category"] = category

        if image is not None:
            assert image in data_columns, f"[image] is not a column in the data."
            self.bindings["data"]["image"] = image

        if captions_from is not None:
            assert (
                captions_from in captions_columns
            ), f"[captions_from] is not a column in the data."
            self.bindings["captions"]["from"] = captions_from

        if captions_to is not None:
            assert (
                captions_to in captions_columns
            ), f"[captions_to] is not a column in the data."
            self.bindings["captions"]["to"] = captions_to

        if captions_text is not None:
            assert (
                captions_text in captions_columns
            ), f"[captions_text] is not a column in the data."
            self.bindings["captions"]["text"] = captions_text

        if captions_image is not None:
            assert (
                captions_image in captions_columns
            ), f"[captions_image] is not a column in the data."
            self.bindings["captions"]["image"] = captions_image

        if label_output_format is not None:
            if label_input_format is None and label_output_format is not None:
                f"[label_input_format] and [label_output_format] must both be defined."
            elif label_input_format is not None and label_output_format is None:
                f"[label_input_format] and [label_output_format] must both be defined."
            if label_output_format.startswith("%"):
                self.metadata["data"]["label"]["type"] = "datetime"
                self.metadata["data"]["label"]["type_id"] = (
                    "datetime$" + label_input_format
                )
                self.metadata["data"]["label"]["output_format_id"] = (
                    "datetime$" + label_output_format
                )
            elif "_" in label_output_format:
                self.metadata["data"]["label"]["type"] = "number"
                self.metadata["data"]["label"]["type_id"] = (
                    "number$" + label_input_format
                )
                self.metadata["data"]["label"]["output_format_id"] = (
                    "number$" + label_output_format
                )
            elif (
                label_output_format is not None
                and not label_output_format.startswith("%")
                and "_" not in label_output_format
            ):
                self.metadata["data"]["label"]["type"] = "string"
                self.metadata["data"]["label"]["type_id"] = (
                    "string$" + label_input_format
                )
                self.metadata["data"]["label"]["output_format_id"] = (
                    "string$" + label_output_format
                )

        if values_output_format is not None:
            if values_input_format is None and values_output_format is not None:
                f"[values_input_format] and [values_output_format] must both be defined."
            elif values_input_format is not None and values_output_format is None:
                f"[values_input_format] and [values_output_format] must both be defined."
            if values_output_format.startswith("%"):
                self.metadata["data"]["values"]["type"] = "datetime"
                self.metadata["data"]["values"]["type_id"] = (
                    "datetime$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "datetime$" + values_output_format
                )
            elif "_" in values_output_format:
                self.metadata["data"]["values"]["type"] = "number"
                self.metadata["data"]["values"]["type_id"] = (
                    "number$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "number$" + values_output_format
                )
            elif (
                values_output_format is not None
                and not values_output_format.startswith("%")
                and "_" not in values_output_format
            ):
                self.metadata["data"]["values"]["type"] = "string"
                self.metadata["data"]["values"]["type_id"] = (
                    "string$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "string$" + values_output_format
                )

        if category_output_format is not None:
            if category_input_format is None and category_output_format is not None:
                f"[category_input_format] and [category_output_format] must both be defined."
            elif category_input_format is not None and category_output_format is None:
                f"[category_input_format] and [category_output_format] must both be defined."
            if category_output_format.startswith("%"):
                self.metadata["data"]["category"]["type"] = "datetime"
                self.metadata["data"]["category"]["type_id"] = (
                    "datetime$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "datetime$" + category_output_format
                )
            elif "_" in category_output_format:
                self.metadata["data"]["category"]["type"] = "number"
                self.metadata["data"]["category"]["type_id"] = (
                    "number$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "number$" + category_output_format
                )
            elif (
                category_output_format is not None
                and not category_output_format.startswith("%")
                and "_" not in category_output_format
            ):
                self.metadata["data"]["category"]["type"] = "string"
                self.metadata["data"]["category"]["type_id"] = (
                    "string$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "string$" + category_output_format
                )

        if image_output_format is not None:
            if image_input_format is None and image_output_format is not None:
                f"[image_input_format] and [image_output_format] must both be defined."
            elif image_input_format is not None and image_output_format is None:
                f"[image_input_format] and [image_output_format] must both be defined."
            if image_output_format.startswith("%"):
                self.metadata["data"]["image"]["type"] = "datetime"
                self.metadata["data"]["image"]["type_id"] = (
                    "datetime$" + image_input_format
                )
                self.metadata["data"]["image"]["output_format_id"] = (
                    "datetime$" + image_output_format
                )
            elif "_" in image_output_format:
                self.metadata["data"]["image"]["type"] = "number"
                self.metadata["data"]["image"]["type_id"] = (
                    "number$" + image_input_format
                )
                self.metadata["data"]["image"]["output_format_id"] = (
                    "number$" + image_output_format
                )
            elif (
                image_output_format is not None
                and not image_output_format.startswith("%")
                and "_" not in image_output_format
            ):
                self.metadata["data"]["image"]["type"] = "string"
                self.metadata["data"]["image"]["type_id"] = (
                    "string$" + image_input_format
                )
                self.metadata["data"]["image"]["output_format_id"] = (
                    "string$" + image_output_format
                )

        if captions_from_output_format is not None:
            if (
                captions_from_input_format is None
                and captions_from_output_format is not None
            ):
                f"[captions_from_input_format] and [captions_from_output_format] must both be defined."
            elif (
                captions_from_input_format is not None
                and captions_from_output_format is None
            ):
                f"[captions_from_input_format] and [captions_from_output_format] must both be defined."
            if captions_from_output_format.startswith("%"):
                self.metadata["captions"]["from"]["type"] = "datetime"
                self.metadata["captions"]["from"]["type_id"] = (
                    "datetime$" + captions_from_input_format
                )
                self.metadata["captions"]["from"]["output_format_id"] = (
                    "datetime$" + captions_from_output_format
                )
            elif "_" in captions_from_output_format:
                self.metadata["captions"]["from"]["type"] = "number"
                self.metadata["captions"]["from"]["type_id"] = (
                    "number$" + captions_from_input_format
                )
                self.metadata["captions"]["from"]["output_format_id"] = (
                    "number$" + captions_from_output_format
                )
            elif (
                captions_from_output_format is not None
                and not captions_from_output_format.startswith("%")
                and "_" not in captions_from_output_format
            ):
                self.metadata["captions"]["from"]["type"] = "string"
                self.metadata["captions"]["from"]["type_id"] = (
                    "string$" + captions_from_input_format
                )
                self.metadata["captions"]["from"]["output_format_id"] = (
                    "string$" + captions_from_output_format
                )

        if captions_to_output_format is not None:
            if (
                captions_to_input_format is None
                and captions_to_output_format is not None
            ):
                f"[captions_to_input_format] and [captions_to_output_format] must both be defined."
            elif (
                captions_to_input_format is not None
                and captions_to_output_format is None
            ):
                f"[captions_to_input_format] and [captions_to_output_format] must both be defined."
            if captions_to_output_format.startswith("%"):
                self.metadata["captions"]["to"]["type"] = "datetime"
                self.metadata["captions"]["to"]["type_id"] = (
                    "datetime$" + captions_to_input_format
                )
                self.metadata["captions"]["to"]["output_format_id"] = (
                    "datetime$" + captions_to_output_format
                )
            elif "_" in captions_to_output_format:
                self.metadata["captions"]["to"]["type"] = "number"
                self.metadata["captions"]["to"]["type_id"] = (
                    "number$" + captions_to_input_format
                )
                self.metadata["captions"]["to"]["output_format_id"] = (
                    "number$" + captions_to_output_format
                )
            elif (
                captions_to_output_format is not None
                and not captions_to_output_format.startswith("%")
                and "_" not in captions_to_output_format
            ):
                self.metadata["captions"]["to"]["type"] = "string"
                self.metadata["captions"]["to"]["type_id"] = (
                    "string$" + captions_to_input_format
                )
                self.metadata["captions"]["to"]["output_format_id"] = (
                    "string$" + captions_to_output_format
                )

        if captions_text_output_format is not None:
            if (
                captions_text_input_format is None
                and captions_text_output_format is not None
            ):
                f"[captions_text_input_format] and [captions_text_output_format] must both be defined."
            elif (
                captions_text_input_format is not None
                and captions_text_output_format is None
            ):
                f"[captions_text_input_format] and [captions_text_output_format] must both be defined."
            if captions_text_output_format.startswith("%"):
                self.metadata["captions"]["text"]["type"] = "datetime"
                self.metadata["captions"]["text"]["type_id"] = (
                    "datetime$" + captions_text_input_format
                )
                self.metadata["captions"]["text"]["output_format_id"] = (
                    "datetime$" + captions_text_output_format
                )
            elif "_" in captions_text_output_format:
                self.metadata["captions"]["text"]["type"] = "number"
                self.metadata["captions"]["text"]["type_id"] = (
                    "number$" + captions_text_input_format
                )
                self.metadata["captions"]["text"]["output_format_id"] = (
                    "number$" + captions_text_output_format
                )
            elif (
                captions_text_output_format is not None
                and not captions_text_output_format.startswith("%")
                and "_" not in captions_text_output_format
            ):
                self.metadata["captions"]["text"]["type"] = "string"
                self.metadata["captions"]["text"]["type_id"] = (
                    "string$" + captions_text_input_format
                )
                self.metadata["captions"]["text"]["output_format_id"] = (
                    "string$" + captions_text_output_format
                )

        if captions_image_output_format is not None:
            if (
                captions_image_input_format is None
                and captions_image_output_format is not None
            ):
                f"[captions_image_input_format] and [captions_image_output_format] must both be defined."
            elif (
                captions_image_input_format is not None
                and captions_image_output_format is None
            ):
                f"[captions_image_input_format] and [captions_image_output_format] must both be defined."
            if captions_image_output_format.startswith("%"):
                self.metadata["captions"]["image"]["type"] = "datetime"
                self.metadata["captions"]["image"]["type_id"] = (
                    "datetime$" + captions_image_input_format
                )
                self.metadata["captions"]["image"]["output_format_id"] = (
                    "datetime$" + captions_image_output_format
                )
            elif "_" in captions_image_output_format:
                self.metadata["captions"]["image"]["type"] = "number"
                self.metadata["captions"]["image"]["type_id"] = (
                    "number$" + captions_image_input_format
                )
                self.metadata["captions"]["image"]["output_format_id"] = (
                    "number$" + captions_image_output_format
                )
            elif (
                captions_image_output_format is not None
                and not captions_image_output_format.startswith("%")
                and "_" not in captions_image_output_format
            ):
                self.metadata["captions"]["image"]["type"] = "string"
                self.metadata["captions"]["image"]["type_id"] = (
                    "string$" + captions_image_input_format
                )
                self.metadata["captions"]["image"]["output_format_id"] = (
                    "string$" + captions_image_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_bubble_chart_data(
        self,
        data: pd.DataFrame = None,
        label: str = None,
        color: str = None,
        size: str = None,
        axis_values: str = None,
        image: str = None,
        metadata: Union[list, str] = None,
    ):
        """
        Bind data to chart: bubble chart.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param label: Label
        :type label: str, optional

        :param color: Color by. Used to color the bubbles. Flourish type hint: column
        :type color: str, optional

        :param size: Size by. Value for bubble size. Flourish type hint: column
        :type size: str, optional

        :param axis_values: Axis values. Values used to plot the bubbles when the bubbles are aligned on an axis. Flourish type hint: column
        :type axis_values: str, optional

        :param image: Image. Images for bubbles. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type image: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom popups and panels Flourish type hint: columns
        :type metadata: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {}

        if label is not None:
            assert label in data_columns, f"[label] is not a column in the data."
            self.bindings["data"]["label"] = label

        if color is not None:
            assert color in data_columns, f"[color] is not a column in the data."
            self.bindings["data"]["color"] = color

        if size is not None:
            assert size in data_columns, f"[size] is not a column in the data."
            self.bindings["data"]["size"] = size

        if axis_values is not None:
            assert (
                axis_values in data_columns
            ), f"[axis_values] is not a column in the data."
            self.bindings["data"]["axis_values"] = axis_values

        if image is not None:
            assert image in data_columns, f"[image] is not a column in the data."
            self.bindings["data"]["image"] = image

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_calculator_data(
        self,
        questions_data: pd.DataFrame = None,
        question_text: str = None,
        question_type: str = None,
        context_text: str = None,
        image: str = None,
        answers_raw: str = None,
        fallback_value: str = None,
    ):
        """
        Bind data to chart: calculator.

        :param questions_data: Questions data. defaults to None
        :type questions_data: pd.DataFrame, optional

        :param question_text: Question text. The question text. Flourish type hint: column
        :type question_text: str, optional

        :param question_type: Question type. The type of question. Choose from number input, text input, single response buttons, multi response buttons, dropdown, single date picker, range date picker, multi date picker, rating, single slider or range slider. Leave empty to just display text. Flourish type hint: column
        :type question_type: str, optional

        :param context_text: Question context. Additional information. Flourish type hint: column
        :type context_text: str, optional

        :param image: Image. Question background image. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type image: str, optional

        :param answers_raw: Answers. Answer values separated by "::". Required for single and multi-response buttons, dropdown and rating questions. Rating answers can take optional labels per value noted as "Value >> Label" - for example, "1 >> Bad :: 2 :: 3 >> Good". Number inputs can take range specifications in the format "min: 0 :: max: 50 :: step: 2". Slider inputs can take slider specifications in the format "min: 0 :: max: 100 :: value: 10". Use two comma separated values for range sliders, eg.: "value: 1, 100". See the templates documentation for additional info. Flourish type hint: column
        :type answers_raw: str, optional

        :param fallback_value: Fallback value. Fallback value to fill the answer input if left empty by the user. Works for all question types but sliders, which will always show the initial value. Flourish type hint: column
        :type fallback_value: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["questions"] = {}
        self.data_properties["questions"] = {}
        if questions_data is not None:
            questions_columns = set(questions_data.columns)
            int_columns_questions_data = questions_data.select_dtypes(
                include="int"
            ).columns
            questions_data[int_columns_questions_data] = questions_data[
                int_columns_questions_data
            ].astype(str)
            self.data_properties["questions"] = questions_data.to_dict(orient="records")
        self.metadata = {}

        if question_text is not None:
            assert (
                question_text in questions_columns
            ), f"[question_text] is not a column in the data."
            self.bindings["questions"]["question_text"] = question_text

        if question_type is not None:
            assert (
                question_type in questions_columns
            ), f"[question_type] is not a column in the data."
            self.bindings["questions"]["question_type"] = question_type

        if context_text is not None:
            assert (
                context_text in questions_columns
            ), f"[context_text] is not a column in the data."
            self.bindings["questions"]["context_text"] = context_text

        if image is not None:
            assert image in questions_columns, f"[image] is not a column in the data."
            self.bindings["questions"]["image"] = image

        if answers_raw is not None:
            assert (
                answers_raw in questions_columns
            ), f"[answers_raw] is not a column in the data."
            self.bindings["questions"]["answers_raw"] = answers_raw

        if fallback_value is not None:
            assert (
                fallback_value in questions_columns
            ), f"[fallback_value] is not a column in the data."
            self.bindings["questions"]["fallback_value"] = fallback_value
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_cards_data(
        self,
        cards_data: pd.DataFrame = None,
        title: str = None,
        image: str = None,
        category: str = None,
        subtitle: str = None,
        text: Union[list, str] = None,
        audio: str = None,
        filter: str = None,
        metadata: Union[list, str] = None,
        audio_input_format: str = None,
        audio_output_format: str = None,
        category_input_format: str = None,
        category_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        image_input_format: str = None,
        image_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        subtitle_input_format: str = None,
        subtitle_output_format: str = None,
        text_input_format: str = None,
        text_output_format: str = None,
        title_input_format: str = None,
        title_output_format: str = None,
    ):
        """
        Bind data to chart: cards.

        :param cards_data: Cards data. defaults to None
        :type cards_data: pd.DataFrame, optional

        :param title: Title. Suggested data type hints: string. Flourish type hint: column
        :type title: str, optional

        :param image: Image. Suggested data type hints: string. Flourish type hint: column
        :type image: str, optional

        :param category: Categories. Optional category column to color the cards. Suggested data type hints: string. Flourish type hint: column
        :type category: str, optional

        :param subtitle: Subtitle. Suggested data type hints: string. Flourish type hint: column
        :type subtitle: str, optional

        :param text: Text. Suggested data type hints: string. Flourish type hint: columns
        :type text: Union[list, str], optional

        :param audio: Audio. Add an audio file to the card, which will play when the card is clicked. This will disable popup behavior. Suggested data type hints: string. Flourish type hint: column
        :type audio: str, optional

        :param filter: Filter. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type filter: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom popups and panelsSuggested data type hints: string, number, datetime. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param audio_input_format: Formats/parses dates, strings, and numbers for the [audio] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type audio_input_format: str, optional
        :param audio_output_format: Formats/parses dates, strings, and numbers for the [audio] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type audio_output_format: str, optional
        :param category_input_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_input_format: str, optional
        :param category_output_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param image_input_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_input_format: str, optional
        :param image_output_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param subtitle_input_format: Formats/parses dates, strings, and numbers for the [subtitle] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type subtitle_input_format: str, optional
        :param subtitle_output_format: Formats/parses dates, strings, and numbers for the [subtitle] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type subtitle_output_format: str, optional
        :param text_input_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type text_input_format: str, optional
        :param text_output_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type text_output_format: str, optional
        :param title_input_format: Formats/parses dates, strings, and numbers for the [title] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type title_input_format: str, optional
        :param title_output_format: Formats/parses dates, strings, and numbers for the [title] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type title_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["cards"] = {}
        self.data_properties["cards"] = {}
        if cards_data is not None:
            cards_columns = set(cards_data.columns)
            int_columns_cards_data = cards_data.select_dtypes(include="int").columns
            cards_data[int_columns_cards_data] = cards_data[
                int_columns_cards_data
            ].astype(str)
            self.data_properties["cards"] = cards_data.to_dict(orient="records")
        self.metadata = {
            "cards": {
                "audio": {},
                "category": {},
                "filter": {},
                "image": {},
                "metadata": {},
                "subtitle": {},
                "text": {},
                "title": {},
            }
        }

        if title is not None:
            assert title in cards_columns, f"[title] is not a column in the data."
            self.bindings["cards"]["title"] = title

        if image is not None:
            assert image in cards_columns, f"[image] is not a column in the data."
            self.bindings["cards"]["image"] = image

        if category is not None:
            assert category in cards_columns, f"[category] is not a column in the data."
            self.bindings["cards"]["category"] = category

        if subtitle is not None:
            assert subtitle in cards_columns, f"[subtitle] is not a column in the data."
            self.bindings["cards"]["subtitle"] = subtitle

        if text is not None:
            if isinstance(text, list):
                for col in text:
                    assert (
                        col in cards_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["cards"]["text"] = text
            elif isinstance(text, str):
                assert text in cards_columns, f"[text] is not a column in the data."
                self.bindings["cards"]["text"] = [text]
        else:
            self.bindings["cards"]["text"] = []

        if audio is not None:
            assert audio in cards_columns, f"[audio] is not a column in the data."
            self.bindings["cards"]["audio"] = audio

        if filter is not None:
            assert filter in cards_columns, f"[filter] is not a column in the data."
            self.bindings["cards"]["filter"] = filter

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in cards_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["cards"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in cards_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["cards"]["metadata"] = [metadata]
        else:
            self.bindings["cards"]["metadata"] = []

        if title_output_format is not None:
            if title_input_format is None and title_output_format is not None:
                f"[title_input_format] and [title_output_format] must both be defined."
            elif title_input_format is not None and title_output_format is None:
                f"[title_input_format] and [title_output_format] must both be defined."
            if title_output_format.startswith("%"):
                self.metadata["cards"]["title"]["type"] = "datetime"
                self.metadata["cards"]["title"]["type_id"] = (
                    "datetime$" + title_input_format
                )
                self.metadata["cards"]["title"]["output_format_id"] = (
                    "datetime$" + title_output_format
                )
            elif "_" in title_output_format:
                self.metadata["cards"]["title"]["type"] = "number"
                self.metadata["cards"]["title"]["type_id"] = (
                    "number$" + title_input_format
                )
                self.metadata["cards"]["title"]["output_format_id"] = (
                    "number$" + title_output_format
                )
            elif (
                title_output_format is not None
                and not title_output_format.startswith("%")
                and "_" not in title_output_format
            ):
                self.metadata["cards"]["title"]["type"] = "string"
                self.metadata["cards"]["title"]["type_id"] = (
                    "string$" + title_input_format
                )
                self.metadata["cards"]["title"]["output_format_id"] = (
                    "string$" + title_output_format
                )

        if image_output_format is not None:
            if image_input_format is None and image_output_format is not None:
                f"[image_input_format] and [image_output_format] must both be defined."
            elif image_input_format is not None and image_output_format is None:
                f"[image_input_format] and [image_output_format] must both be defined."
            if image_output_format.startswith("%"):
                self.metadata["cards"]["image"]["type"] = "datetime"
                self.metadata["cards"]["image"]["type_id"] = (
                    "datetime$" + image_input_format
                )
                self.metadata["cards"]["image"]["output_format_id"] = (
                    "datetime$" + image_output_format
                )
            elif "_" in image_output_format:
                self.metadata["cards"]["image"]["type"] = "number"
                self.metadata["cards"]["image"]["type_id"] = (
                    "number$" + image_input_format
                )
                self.metadata["cards"]["image"]["output_format_id"] = (
                    "number$" + image_output_format
                )
            elif (
                image_output_format is not None
                and not image_output_format.startswith("%")
                and "_" not in image_output_format
            ):
                self.metadata["cards"]["image"]["type"] = "string"
                self.metadata["cards"]["image"]["type_id"] = (
                    "string$" + image_input_format
                )
                self.metadata["cards"]["image"]["output_format_id"] = (
                    "string$" + image_output_format
                )

        if category_output_format is not None:
            if category_input_format is None and category_output_format is not None:
                f"[category_input_format] and [category_output_format] must both be defined."
            elif category_input_format is not None and category_output_format is None:
                f"[category_input_format] and [category_output_format] must both be defined."
            if category_output_format.startswith("%"):
                self.metadata["cards"]["category"]["type"] = "datetime"
                self.metadata["cards"]["category"]["type_id"] = (
                    "datetime$" + category_input_format
                )
                self.metadata["cards"]["category"]["output_format_id"] = (
                    "datetime$" + category_output_format
                )
            elif "_" in category_output_format:
                self.metadata["cards"]["category"]["type"] = "number"
                self.metadata["cards"]["category"]["type_id"] = (
                    "number$" + category_input_format
                )
                self.metadata["cards"]["category"]["output_format_id"] = (
                    "number$" + category_output_format
                )
            elif (
                category_output_format is not None
                and not category_output_format.startswith("%")
                and "_" not in category_output_format
            ):
                self.metadata["cards"]["category"]["type"] = "string"
                self.metadata["cards"]["category"]["type_id"] = (
                    "string$" + category_input_format
                )
                self.metadata["cards"]["category"]["output_format_id"] = (
                    "string$" + category_output_format
                )

        if subtitle_output_format is not None:
            if subtitle_input_format is None and subtitle_output_format is not None:
                f"[subtitle_input_format] and [subtitle_output_format] must both be defined."
            elif subtitle_input_format is not None and subtitle_output_format is None:
                f"[subtitle_input_format] and [subtitle_output_format] must both be defined."
            if subtitle_output_format.startswith("%"):
                self.metadata["cards"]["subtitle"]["type"] = "datetime"
                self.metadata["cards"]["subtitle"]["type_id"] = (
                    "datetime$" + subtitle_input_format
                )
                self.metadata["cards"]["subtitle"]["output_format_id"] = (
                    "datetime$" + subtitle_output_format
                )
            elif "_" in subtitle_output_format:
                self.metadata["cards"]["subtitle"]["type"] = "number"
                self.metadata["cards"]["subtitle"]["type_id"] = (
                    "number$" + subtitle_input_format
                )
                self.metadata["cards"]["subtitle"]["output_format_id"] = (
                    "number$" + subtitle_output_format
                )
            elif (
                subtitle_output_format is not None
                and not subtitle_output_format.startswith("%")
                and "_" not in subtitle_output_format
            ):
                self.metadata["cards"]["subtitle"]["type"] = "string"
                self.metadata["cards"]["subtitle"]["type_id"] = (
                    "string$" + subtitle_input_format
                )
                self.metadata["cards"]["subtitle"]["output_format_id"] = (
                    "string$" + subtitle_output_format
                )

        if text_output_format is not None:
            if text_input_format is None and text_output_format is not None:
                f"[text_input_format] and [text_output_format] must both be defined."
            elif text_input_format is not None and text_output_format is None:
                f"[text_input_format] and [text_output_format] must both be defined."
            if text_output_format.startswith("%"):
                self.metadata["cards"]["text"]["type"] = "datetime"
                self.metadata["cards"]["text"]["type_id"] = (
                    "datetime$" + text_input_format
                )
                self.metadata["cards"]["text"]["output_format_id"] = (
                    "datetime$" + text_output_format
                )
            elif "_" in text_output_format:
                self.metadata["cards"]["text"]["type"] = "number"
                self.metadata["cards"]["text"]["type_id"] = (
                    "number$" + text_input_format
                )
                self.metadata["cards"]["text"]["output_format_id"] = (
                    "number$" + text_output_format
                )
            elif (
                text_output_format is not None
                and not text_output_format.startswith("%")
                and "_" not in text_output_format
            ):
                self.metadata["cards"]["text"]["type"] = "string"
                self.metadata["cards"]["text"]["type_id"] = (
                    "string$" + text_input_format
                )
                self.metadata["cards"]["text"]["output_format_id"] = (
                    "string$" + text_output_format
                )

        if audio_output_format is not None:
            if audio_input_format is None and audio_output_format is not None:
                f"[audio_input_format] and [audio_output_format] must both be defined."
            elif audio_input_format is not None and audio_output_format is None:
                f"[audio_input_format] and [audio_output_format] must both be defined."
            if audio_output_format.startswith("%"):
                self.metadata["cards"]["audio"]["type"] = "datetime"
                self.metadata["cards"]["audio"]["type_id"] = (
                    "datetime$" + audio_input_format
                )
                self.metadata["cards"]["audio"]["output_format_id"] = (
                    "datetime$" + audio_output_format
                )
            elif "_" in audio_output_format:
                self.metadata["cards"]["audio"]["type"] = "number"
                self.metadata["cards"]["audio"]["type_id"] = (
                    "number$" + audio_input_format
                )
                self.metadata["cards"]["audio"]["output_format_id"] = (
                    "number$" + audio_output_format
                )
            elif (
                audio_output_format is not None
                and not audio_output_format.startswith("%")
                and "_" not in audio_output_format
            ):
                self.metadata["cards"]["audio"]["type"] = "string"
                self.metadata["cards"]["audio"]["type_id"] = (
                    "string$" + audio_input_format
                )
                self.metadata["cards"]["audio"]["output_format_id"] = (
                    "string$" + audio_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["cards"]["filter"]["type"] = "datetime"
                self.metadata["cards"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["cards"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["cards"]["filter"]["type"] = "number"
                self.metadata["cards"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["cards"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["cards"]["filter"]["type"] = "string"
                self.metadata["cards"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["cards"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["cards"]["metadata"]["type"] = "datetime"
                self.metadata["cards"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["cards"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["cards"]["metadata"]["type"] = "number"
                self.metadata["cards"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["cards"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["cards"]["metadata"]["type"] = "string"
                self.metadata["cards"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["cards"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_chord_diagram_data(
        self,
        connections_data: pd.DataFrame = None,
        source: str = None,
        target: str = None,
        value: str = None,
    ):
        """
        Bind data to chart: chord diagram.

        :param connections_data: Connections data. defaults to None
        :type connections_data: pd.DataFrame, optional

        :param source: Source
        :type source: str, optional

        :param target: Target
        :type target: str, optional

        :param value: Value. A number specifying the size of the flow. Flourish type hint: column
        :type value: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["connections"] = {}
        self.data_properties["connections"] = {}
        if connections_data is not None:
            connections_columns = set(connections_data.columns)
            int_columns_connections_data = connections_data.select_dtypes(
                include="int"
            ).columns
            connections_data[int_columns_connections_data] = connections_data[
                int_columns_connections_data
            ].astype(str)
            self.data_properties["connections"] = connections_data.to_dict(
                orient="records"
            )
        self.metadata = {}

        if source is not None:
            assert (
                source in connections_columns
            ), f"[source] is not a column in the data."
            self.bindings["connections"]["source"] = source

        if target is not None:
            assert (
                target in connections_columns
            ), f"[target] is not a column in the data."
            self.bindings["connections"]["target"] = target

        if value is not None:
            assert value in connections_columns, f"[value] is not a column in the data."
            self.bindings["connections"]["value"] = value
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_draw_the_line_data(
        self,
        data: pd.DataFrame = None,
        x: str = None,
        lines_reveal: Union[list, str] = None,
        lines_fixed: Union[list, str] = None,
    ):
        """
        Bind data to chart: draw the line chart.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param x: Time (x axis). Labels for the X axis. Flourish type hint: column
        :type x: str, optional

        :param lines_reveal: Lines reveal
        :type lines_reveal: Union[list, str], optional

        :param lines_fixed: Lines fixed
        :type lines_fixed: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {}

        if x is not None:
            assert x in data_columns, f"[x] is not a column in the data."
            self.bindings["data"]["x"] = x

        if lines_reveal is not None:
            if isinstance(lines_reveal, list):
                for col in lines_reveal:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["lines_reveal"] = lines_reveal
            elif isinstance(lines_reveal, str):
                assert (
                    lines_reveal in data_columns
                ), f"[lines_reveal] is not a column in the data."
                self.bindings["data"]["lines_reveal"] = [lines_reveal]
        else:
            self.bindings["data"]["lines_reveal"] = []

        if lines_fixed is not None:
            if isinstance(lines_fixed, list):
                for col in lines_fixed:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["lines_fixed"] = lines_fixed
            elif isinstance(lines_fixed, str):
                assert (
                    lines_fixed in data_columns
                ), f"[lines_fixed] is not a column in the data."
                self.bindings["data"]["lines_fixed"] = [lines_fixed]
        else:
            self.bindings["data"]["lines_fixed"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_election_results_chart_data(
        self,
        values_now_data: pd.DataFrame = None,
        values_historical_data: pd.DataFrame = None,
        values_now_name: str = None,
        values_now_values: Union[list, str] = None,
        values_historical_name: str = None,
        values_historical_values: Union[list, str] = None,
    ):
        """
        Bind data to chart: election results chart.

        :param values_now_data: Values now data. defaults to None
        :type values_now_data: pd.DataFrame, optional
        :param values_historical_data: Values historical data. defaults to None
        :type values_historical_data: pd.DataFrame, optional

        :param values_now_name: Region name. The name of the data series (eg. voting district). Flourish type hint: column
        :type values_now_name: str, optional

        :param values_now_values: Results by party. One column per party, with party names as header rows. Flourish type hint: columns
        :type values_now_values: Union[list, str], optional

        :param values_historical_name: Region name. The name of the data series (eg. voting district). Flourish type hint: column
        :type values_historical_name: str, optional

        :param values_historical_values: Results by party. One column per party, with party names as header rows. Flourish type hint: columns
        :type values_historical_values: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["values_now"] = {}
        self.data_properties["values_now"] = {}
        if values_now_data is not None:
            values_now_columns = set(values_now_data.columns)
            int_columns_values_now_data = values_now_data.select_dtypes(
                include="int"
            ).columns
            values_now_data[int_columns_values_now_data] = values_now_data[
                int_columns_values_now_data
            ].astype(str)
            self.data_properties["values_now"] = values_now_data.to_dict(
                orient="records"
            )

        self.bindings["values_historical"] = {}
        self.data_properties["values_historical"] = {}
        if values_historical_data is not None:
            values_historical_columns = set(values_historical_data.columns)
            int_columns_values_historical_data = values_historical_data.select_dtypes(
                include="int"
            ).columns
            values_historical_data[
                int_columns_values_historical_data
            ] = values_historical_data[int_columns_values_historical_data].astype(str)
            self.data_properties["values_historical"] = values_historical_data.to_dict(
                orient="records"
            )
        self.metadata = {}

        if values_now_name is not None:
            assert (
                values_now_name in values_now_columns
            ), f"[values_now_name] is not a column in the data."
            self.bindings["values_now"]["name"] = values_now_name

        if values_now_values is not None:
            if isinstance(values_now_values, list):
                for col in values_now_values:
                    assert (
                        col in values_now_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["values_now"]["values"] = values_now_values
            elif isinstance(values_now_values, str):
                assert (
                    values_now_values in values_now_columns
                ), f"[values_now_values] is not a column in the data."
                self.bindings["values_now"]["values"] = [values_now_values]
        else:
            self.bindings["values_now"]["values"] = []

        if values_historical_name is not None:
            assert (
                values_historical_name in values_historical_columns
            ), f"[values_historical_name] is not a column in the data."
            self.bindings["values_historical"]["name"] = values_historical_name

        if values_historical_values is not None:
            if isinstance(values_historical_values, list):
                for col in values_historical_values:
                    assert (
                        col in values_historical_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["values_historical"]["values"] = values_historical_values
            elif isinstance(values_historical_values, str):
                assert (
                    values_historical_values in values_historical_columns
                ), f"[values_historical_values] is not a column in the data."
                self.bindings["values_historical"]["values"] = [
                    values_historical_values
                ]
        else:
            self.bindings["values_historical"]["values"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_gantt_data(
        self,
        gantt_data: pd.DataFrame = None,
        start_date: str = None,
        end_date: str = None,
        task: str = None,
        grouping: str = None,
        color: str = None,
        progress: str = None,
        filter: str = None,
        metadata: Union[list, str] = None,
    ):
        """
        Bind data to chart: gantt chart.

        :param gantt_data: Gantt data. defaults to None
        :type gantt_data: pd.DataFrame, optional

        :param start_date: Start date
        :type start_date: str, optional

        :param end_date: End date. The end date or time of the event.  If working with days, the end date should be the first day after the end date.  So if your event stretches from 1/1. and ends on the 5/1. your end date should be 6/1.  This will mean your Gantt bar will stretch across the last day of your project or task. Flourish type hint: column
        :type end_date: str, optional

        :param task: Task
        :type task: str, optional

        :param grouping: Group. Select a categorical column to combine bars into groups on the Y axis. Flourish type hint: column
        :type grouping: str, optional

        :param color: Color category. Select a categorical column; each unique value in the column will become a color. Flourish type hint: column
        :type color: str, optional

        :param progress: Progress. Requires a number column with values between 0 and 1, representing the progress from 0 to 100%. Flourish type hint: column
        :type progress: str, optional

        :param filter: Filter. If set, creates a filter menu or time slider. Flourish type hint: column
        :type filter: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panelsFlourish type hint: columns
        :type metadata: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["gantt"] = {}
        self.data_properties["gantt"] = {}
        if gantt_data is not None:
            gantt_columns = set(gantt_data.columns)
            int_columns_gantt_data = gantt_data.select_dtypes(include="int").columns
            gantt_data[int_columns_gantt_data] = gantt_data[
                int_columns_gantt_data
            ].astype(str)
            self.data_properties["gantt"] = gantt_data.to_dict(orient="records")
        self.metadata = {}

        if start_date is not None:
            assert (
                start_date in gantt_columns
            ), f"[start_date] is not a column in the data."
            self.bindings["gantt"]["start_date"] = start_date

        if end_date is not None:
            assert end_date in gantt_columns, f"[end_date] is not a column in the data."
            self.bindings["gantt"]["end_date"] = end_date

        if task is not None:
            assert task in gantt_columns, f"[task] is not a column in the data."
            self.bindings["gantt"]["task"] = task

        if grouping is not None:
            assert grouping in gantt_columns, f"[grouping] is not a column in the data."
            self.bindings["gantt"]["grouping"] = grouping

        if color is not None:
            assert color in gantt_columns, f"[color] is not a column in the data."
            self.bindings["gantt"]["color"] = color

        if progress is not None:
            assert progress in gantt_columns, f"[progress] is not a column in the data."
            self.bindings["gantt"]["progress"] = progress

        if filter is not None:
            assert filter in gantt_columns, f"[filter] is not a column in the data."
            self.bindings["gantt"]["filter"] = filter

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in gantt_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["gantt"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in gantt_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["gantt"]["metadata"] = [metadata]
        else:
            self.bindings["gantt"]["metadata"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_gauge_data(
        self,
        data: pd.DataFrame = None,
        name: str = None,
        value: Union[list, str] = None,
        name_input_format: str = None,
        name_output_format: str = None,
        value_input_format: str = None,
        value_output_format: str = None,
    ):
        """
        Bind data to chart: gauge.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param name: Name
        :type name: str, optional

        :param value: Value. One or more columns of numbers. Flourish type hint: columns
        :type value: Union[list, str], optional
        :param name_input_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_input_format: str, optional
        :param name_output_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_output_format: str, optional
        :param value_input_format: Formats/parses dates, strings, and numbers for the [value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type value_input_format: str, optional
        :param value_output_format: Formats/parses dates, strings, and numbers for the [value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type value_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {"data": {"name": {}, "value": {}}}

        if name is not None:
            assert name in data_columns, f"[name] is not a column in the data."
            self.bindings["data"]["name"] = name

        if value is not None:
            if isinstance(value, list):
                for col in value:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["value"] = value
            elif isinstance(value, str):
                assert value in data_columns, f"[value] is not a column in the data."
                self.bindings["data"]["value"] = [value]
        else:
            self.bindings["data"]["value"] = []

        if name_output_format is not None:
            if name_input_format is None and name_output_format is not None:
                f"[name_input_format] and [name_output_format] must both be defined."
            elif name_input_format is not None and name_output_format is None:
                f"[name_input_format] and [name_output_format] must both be defined."
            if name_output_format.startswith("%"):
                self.metadata["data"]["name"]["type"] = "datetime"
                self.metadata["data"]["name"]["type_id"] = (
                    "datetime$" + name_input_format
                )
                self.metadata["data"]["name"]["output_format_id"] = (
                    "datetime$" + name_output_format
                )
            elif "_" in name_output_format:
                self.metadata["data"]["name"]["type"] = "number"
                self.metadata["data"]["name"]["type_id"] = "number$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "number$" + name_output_format
                )
            elif (
                name_output_format is not None
                and not name_output_format.startswith("%")
                and "_" not in name_output_format
            ):
                self.metadata["data"]["name"]["type"] = "string"
                self.metadata["data"]["name"]["type_id"] = "string$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "string$" + name_output_format
                )

        if value_output_format is not None:
            if value_input_format is None and value_output_format is not None:
                f"[value_input_format] and [value_output_format] must both be defined."
            elif value_input_format is not None and value_output_format is None:
                f"[value_input_format] and [value_output_format] must both be defined."
            if value_output_format.startswith("%"):
                self.metadata["data"]["value"]["type"] = "datetime"
                self.metadata["data"]["value"]["type_id"] = (
                    "datetime$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "datetime$" + value_output_format
                )
            elif "_" in value_output_format:
                self.metadata["data"]["value"]["type"] = "number"
                self.metadata["data"]["value"]["type_id"] = (
                    "number$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "number$" + value_output_format
                )
            elif (
                value_output_format is not None
                and not value_output_format.startswith("%")
                and "_" not in value_output_format
            ):
                self.metadata["data"]["value"]["type"] = "string"
                self.metadata["data"]["value"]["type_id"] = (
                    "string$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "string$" + value_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_hierarchy_data(
        self,
        data: pd.DataFrame = None,
        nest_columns: Union[list, str] = None,
        size_columns: Union[list, str] = None,
        filter: str = None,
        popup_metadata: Union[list, str] = None,
        nest_columns_input_format: str = None,
        nest_columns_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        popup_metadata_input_format: str = None,
        popup_metadata_output_format: str = None,
        size_columns_input_format: str = None,
        size_columns_output_format: str = None,
    ):
        """
        Bind data to chart: hierarchy.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param nest_columns: Categories/nesting. Choose one or more categorical columns to nest by. The data is nested in the same order as the chosen columns (e.g. C, B is different from B, C). Suggested data type hints: string. Flourish type hint: columns
        :type nest_columns: Union[list, str], optional

        :param size_columns: Size by. Optionally choose one or more numeric columns to size by. If more than one is chosen, a dropdown will appear in the visualization which lets the user choose. Rows with negative values are excluded. Suggested data type hints: number. Flourish type hint: columns
        :type size_columns: Union[list, str], optional

        :param filter: Filter. Optionally choose a categorical column to filter by. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type filter: str, optional

        :param popup_metadata: Info for popups. One or more columns of information (text,  image URLs ,  embedded charts  etc) to include in  popups and panels Suggested data type hints: string, number, datetime. Flourish type hint: columns
        :type popup_metadata: Union[list, str], optional
        :param nest_columns_input_format: Formats/parses dates, strings, and numbers for the [nest_columns] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type nest_columns_input_format: str, optional
        :param nest_columns_output_format: Formats/parses dates, strings, and numbers for the [nest_columns] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type nest_columns_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param popup_metadata_input_format: Formats/parses dates, strings, and numbers for the [popup_metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type popup_metadata_input_format: str, optional
        :param popup_metadata_output_format: Formats/parses dates, strings, and numbers for the [popup_metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type popup_metadata_output_format: str, optional
        :param size_columns_input_format: Formats/parses dates, strings, and numbers for the [size_columns] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type size_columns_input_format: str, optional
        :param size_columns_output_format: Formats/parses dates, strings, and numbers for the [size_columns] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type size_columns_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "nest_columns": {},
                "filter": {},
                "popup_metadata": {},
                "size_columns": {},
            }
        }

        if nest_columns is not None:
            if isinstance(nest_columns, list):
                for col in nest_columns:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["nest_columns"] = nest_columns
            elif isinstance(nest_columns, str):
                assert (
                    nest_columns in data_columns
                ), f"[nest_columns] is not a column in the data."
                self.bindings["data"]["nest_columns"] = [nest_columns]
        else:
            self.bindings["data"]["nest_columns"] = []

        if size_columns is not None:
            if isinstance(size_columns, list):
                for col in size_columns:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["size_columns"] = size_columns
            elif isinstance(size_columns, str):
                assert (
                    size_columns in data_columns
                ), f"[size_columns] is not a column in the data."
                self.bindings["data"]["size_columns"] = [size_columns]
        else:
            self.bindings["data"]["size_columns"] = []

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if popup_metadata is not None:
            if isinstance(popup_metadata, list):
                for col in popup_metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["popup_metadata"] = popup_metadata
            elif isinstance(popup_metadata, str):
                assert (
                    popup_metadata in data_columns
                ), f"[popup_metadata] is not a column in the data."
                self.bindings["data"]["popup_metadata"] = [popup_metadata]
        else:
            self.bindings["data"]["popup_metadata"] = []

        if nest_columns_output_format is not None:
            if (
                nest_columns_input_format is None
                and nest_columns_output_format is not None
            ):
                f"[nest_columns_input_format] and [nest_columns_output_format] must both be defined."
            elif (
                nest_columns_input_format is not None
                and nest_columns_output_format is None
            ):
                f"[nest_columns_input_format] and [nest_columns_output_format] must both be defined."
            if nest_columns_output_format.startswith("%"):
                self.metadata["data"]["nest_columns"]["type"] = "datetime"
                self.metadata["data"]["nest_columns"]["type_id"] = (
                    "datetime$" + nest_columns_input_format
                )
                self.metadata["data"]["nest_columns"]["output_format_id"] = (
                    "datetime$" + nest_columns_output_format
                )
            elif "_" in nest_columns_output_format:
                self.metadata["data"]["nest_columns"]["type"] = "number"
                self.metadata["data"]["nest_columns"]["type_id"] = (
                    "number$" + nest_columns_input_format
                )
                self.metadata["data"]["nest_columns"]["output_format_id"] = (
                    "number$" + nest_columns_output_format
                )
            elif (
                nest_columns_output_format is not None
                and not nest_columns_output_format.startswith("%")
                and "_" not in nest_columns_output_format
            ):
                self.metadata["data"]["nest_columns"]["type"] = "string"
                self.metadata["data"]["nest_columns"]["type_id"] = (
                    "string$" + nest_columns_input_format
                )
                self.metadata["data"]["nest_columns"]["output_format_id"] = (
                    "string$" + nest_columns_output_format
                )

        if size_columns_output_format is not None:
            if (
                size_columns_input_format is None
                and size_columns_output_format is not None
            ):
                f"[size_columns_input_format] and [size_columns_output_format] must both be defined."
            elif (
                size_columns_input_format is not None
                and size_columns_output_format is None
            ):
                f"[size_columns_input_format] and [size_columns_output_format] must both be defined."
            if size_columns_output_format.startswith("%"):
                self.metadata["data"]["size_columns"]["type"] = "datetime"
                self.metadata["data"]["size_columns"]["type_id"] = (
                    "datetime$" + size_columns_input_format
                )
                self.metadata["data"]["size_columns"]["output_format_id"] = (
                    "datetime$" + size_columns_output_format
                )
            elif "_" in size_columns_output_format:
                self.metadata["data"]["size_columns"]["type"] = "number"
                self.metadata["data"]["size_columns"]["type_id"] = (
                    "number$" + size_columns_input_format
                )
                self.metadata["data"]["size_columns"]["output_format_id"] = (
                    "number$" + size_columns_output_format
                )
            elif (
                size_columns_output_format is not None
                and not size_columns_output_format.startswith("%")
                and "_" not in size_columns_output_format
            ):
                self.metadata["data"]["size_columns"]["type"] = "string"
                self.metadata["data"]["size_columns"]["type_id"] = (
                    "string$" + size_columns_input_format
                )
                self.metadata["data"]["size_columns"]["output_format_id"] = (
                    "string$" + size_columns_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if popup_metadata_output_format is not None:
            if (
                popup_metadata_input_format is None
                and popup_metadata_output_format is not None
            ):
                f"[popup_metadata_input_format] and [popup_metadata_output_format] must both be defined."
            elif (
                popup_metadata_input_format is not None
                and popup_metadata_output_format is None
            ):
                f"[popup_metadata_input_format] and [popup_metadata_output_format] must both be defined."
            if popup_metadata_output_format.startswith("%"):
                self.metadata["data"]["popup_metadata"]["type"] = "datetime"
                self.metadata["data"]["popup_metadata"]["type_id"] = (
                    "datetime$" + popup_metadata_input_format
                )
                self.metadata["data"]["popup_metadata"]["output_format_id"] = (
                    "datetime$" + popup_metadata_output_format
                )
            elif "_" in popup_metadata_output_format:
                self.metadata["data"]["popup_metadata"]["type"] = "number"
                self.metadata["data"]["popup_metadata"]["type_id"] = (
                    "number$" + popup_metadata_input_format
                )
                self.metadata["data"]["popup_metadata"]["output_format_id"] = (
                    "number$" + popup_metadata_output_format
                )
            elif (
                popup_metadata_output_format is not None
                and not popup_metadata_output_format.startswith("%")
                and "_" not in popup_metadata_output_format
            ):
                self.metadata["data"]["popup_metadata"]["type"] = "string"
                self.metadata["data"]["popup_metadata"]["type_id"] = (
                    "string$" + popup_metadata_input_format
                )
                self.metadata["data"]["popup_metadata"]["output_format_id"] = (
                    "string$" + popup_metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_horserace_data(
        self,
        horserace_data: pd.DataFrame = None,
        captions_data: pd.DataFrame = None,
        horserace_name: str = None,
        horserace_stages: Union[list, str] = None,
        horserace_category: str = None,
        horserace_pic: str = None,
        horserace_filter: str = None,
        captions_from: str = None,
        captions_to: str = None,
        captions_text: str = None,
        captions_image: str = None,
        captions_image_input_format: str = None,
        captions_image_output_format: str = None,
        captions_to_input_format: str = None,
        captions_to_output_format: str = None,
        captions_from_input_format: str = None,
        captions_from_output_format: str = None,
        captions_text_input_format: str = None,
        captions_text_output_format: str = None,
        horserace_category_input_format: str = None,
        horserace_category_output_format: str = None,
        horserace_filter_input_format: str = None,
        horserace_filter_output_format: str = None,
        horserace_pic_input_format: str = None,
        horserace_pic_output_format: str = None,
        horserace_name_input_format: str = None,
        horserace_name_output_format: str = None,
        horserace_stages_input_format: str = None,
        horserace_stages_output_format: str = None,
    ):
        """
        Bind data to chart: line chart race.

        :param horserace_data: Horserace data. defaults to None
        :type horserace_data: pd.DataFrame, optional
        :param captions_data: Captions data. defaults to None
        :type captions_data: pd.DataFrame, optional

        :param horserace_name: Label. The name of each entrant. Suggested data type hints: string. Flourish type hint: column
        :type horserace_name: str, optional

        :param horserace_stages: Values. Raw scores, which will be automatically converted to ranks. Column names will be used to populate the X axis of the chart. Suggested data type hints: number. Flourish type hint: columns
        :type horserace_stages: Union[list, str], optional

        :param horserace_category: Color by. Select a column to color the lines by. If omitted, colors will be assigned per name. Suggested data type hints: string. Flourish type hint: column
        :type horserace_category: str, optional

        :param horserace_pic: Image. Add an image URL or right-click on a cell to upload an image. Suggested data type hints: string. Flourish type hint: column
        :type horserace_pic: str, optional

        :param horserace_filter: Filter. Hide/show entrants based on the values in this column. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type horserace_filter: str, optional

        :param captions_from: Stage to show. Must match the column headers in the main datasheet. Suggested data type hints: string. Flourish type hint: column
        :type captions_from: str, optional

        :param captions_to: Stage to hide. Must match the column headers in the main datasheet. Suggested data type hints: string. Flourish type hint: column
        :type captions_to: str, optional

        :param captions_text: Text. Text or HTML to show. Suggested data type hints: string. Flourish type hint: column
        :type captions_text: str, optional

        :param captions_image: Image. Image to show. Suggested data type hints: string. Flourish type hint: column
        :type captions_image: str, optional
        :param captions_image_input_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_image_input_format: str, optional
        :param captions_image_output_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_image_output_format: str, optional
        :param captions_to_input_format: Formats/parses dates, strings, and numbers for the [to] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_to_input_format: str, optional
        :param captions_to_output_format: Formats/parses dates, strings, and numbers for the [to] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_to_output_format: str, optional
        :param captions_from_input_format: Formats/parses dates, strings, and numbers for the [from] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_from_input_format: str, optional
        :param captions_from_output_format: Formats/parses dates, strings, and numbers for the [from] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_from_output_format: str, optional
        :param captions_text_input_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_text_input_format: str, optional
        :param captions_text_output_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type captions_text_output_format: str, optional
        :param horserace_category_input_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_category_input_format: str, optional
        :param horserace_category_output_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_category_output_format: str, optional
        :param horserace_filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_filter_input_format: str, optional
        :param horserace_filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_filter_output_format: str, optional
        :param horserace_pic_input_format: Formats/parses dates, strings, and numbers for the [pic] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_pic_input_format: str, optional
        :param horserace_pic_output_format: Formats/parses dates, strings, and numbers for the [pic] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_pic_output_format: str, optional
        :param horserace_name_input_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_name_input_format: str, optional
        :param horserace_name_output_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_name_output_format: str, optional
        :param horserace_stages_input_format: Formats/parses dates, strings, and numbers for the [stages] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_stages_input_format: str, optional
        :param horserace_stages_output_format: Formats/parses dates, strings, and numbers for the [stages] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type horserace_stages_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["horserace"] = {}
        self.data_properties["horserace"] = {}
        if horserace_data is not None:
            horserace_columns = set(horserace_data.columns)
            int_columns_horserace_data = horserace_data.select_dtypes(
                include="int"
            ).columns
            horserace_data[int_columns_horserace_data] = horserace_data[
                int_columns_horserace_data
            ].astype(str)
            self.data_properties["horserace"] = horserace_data.to_dict(orient="records")

        self.bindings["captions"] = {}
        self.data_properties["captions"] = {}
        if captions_data is not None:
            captions_columns = set(captions_data.columns)
            int_columns_captions_data = captions_data.select_dtypes(
                include="int"
            ).columns
            captions_data[int_columns_captions_data] = captions_data[
                int_columns_captions_data
            ].astype(str)
            self.data_properties["captions"] = captions_data.to_dict(orient="records")
        self.metadata = {
            "captions": {"image": {}, "to": {}, "from": {}, "text": {}},
            "horserace": {
                "category": {},
                "filter": {},
                "pic": {},
                "name": {},
                "stages": {},
            },
        }

        if horserace_name is not None:
            assert (
                horserace_name in horserace_columns
            ), f"[horserace_name] is not a column in the data."
            self.bindings["horserace"]["name"] = horserace_name

        if horserace_stages is not None:
            if isinstance(horserace_stages, list):
                for col in horserace_stages:
                    assert (
                        col in horserace_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["horserace"]["stages"] = horserace_stages
            elif isinstance(horserace_stages, str):
                assert (
                    horserace_stages in horserace_columns
                ), f"[horserace_stages] is not a column in the data."
                self.bindings["horserace"]["stages"] = [horserace_stages]
        else:
            self.bindings["horserace"]["stages"] = []

        if horserace_category is not None:
            assert (
                horserace_category in horserace_columns
            ), f"[horserace_category] is not a column in the data."
            self.bindings["horserace"]["category"] = horserace_category

        if horserace_pic is not None:
            assert (
                horserace_pic in horserace_columns
            ), f"[horserace_pic] is not a column in the data."
            self.bindings["horserace"]["pic"] = horserace_pic

        if horserace_filter is not None:
            assert (
                horserace_filter in horserace_columns
            ), f"[horserace_filter] is not a column in the data."
            self.bindings["horserace"]["filter"] = horserace_filter

        if captions_from is not None:
            assert (
                captions_from in captions_columns
            ), f"[captions_from] is not a column in the data."
            self.bindings["captions"]["from"] = captions_from

        if captions_to is not None:
            assert (
                captions_to in captions_columns
            ), f"[captions_to] is not a column in the data."
            self.bindings["captions"]["to"] = captions_to

        if captions_text is not None:
            assert (
                captions_text in captions_columns
            ), f"[captions_text] is not a column in the data."
            self.bindings["captions"]["text"] = captions_text

        if captions_image is not None:
            assert (
                captions_image in captions_columns
            ), f"[captions_image] is not a column in the data."
            self.bindings["captions"]["image"] = captions_image

        if horserace_name_output_format is not None:
            if (
                horserace_name_input_format is None
                and horserace_name_output_format is not None
            ):
                f"[horserace_name_input_format] and [horserace_name_output_format] must both be defined."
            elif (
                horserace_name_input_format is not None
                and horserace_name_output_format is None
            ):
                f"[horserace_name_input_format] and [horserace_name_output_format] must both be defined."
            if horserace_name_output_format.startswith("%"):
                self.metadata["horserace"]["name"]["type"] = "datetime"
                self.metadata["horserace"]["name"]["type_id"] = (
                    "datetime$" + horserace_name_input_format
                )
                self.metadata["horserace"]["name"]["output_format_id"] = (
                    "datetime$" + horserace_name_output_format
                )
            elif "_" in horserace_name_output_format:
                self.metadata["horserace"]["name"]["type"] = "number"
                self.metadata["horserace"]["name"]["type_id"] = (
                    "number$" + horserace_name_input_format
                )
                self.metadata["horserace"]["name"]["output_format_id"] = (
                    "number$" + horserace_name_output_format
                )
            elif (
                horserace_name_output_format is not None
                and not horserace_name_output_format.startswith("%")
                and "_" not in horserace_name_output_format
            ):
                self.metadata["horserace"]["name"]["type"] = "string"
                self.metadata["horserace"]["name"]["type_id"] = (
                    "string$" + horserace_name_input_format
                )
                self.metadata["horserace"]["name"]["output_format_id"] = (
                    "string$" + horserace_name_output_format
                )

        if horserace_stages_output_format is not None:
            if (
                horserace_stages_input_format is None
                and horserace_stages_output_format is not None
            ):
                f"[horserace_stages_input_format] and [horserace_stages_output_format] must both be defined."
            elif (
                horserace_stages_input_format is not None
                and horserace_stages_output_format is None
            ):
                f"[horserace_stages_input_format] and [horserace_stages_output_format] must both be defined."
            if horserace_stages_output_format.startswith("%"):
                self.metadata["horserace"]["stages"]["type"] = "datetime"
                self.metadata["horserace"]["stages"]["type_id"] = (
                    "datetime$" + horserace_stages_input_format
                )
                self.metadata["horserace"]["stages"]["output_format_id"] = (
                    "datetime$" + horserace_stages_output_format
                )
            elif "_" in horserace_stages_output_format:
                self.metadata["horserace"]["stages"]["type"] = "number"
                self.metadata["horserace"]["stages"]["type_id"] = (
                    "number$" + horserace_stages_input_format
                )
                self.metadata["horserace"]["stages"]["output_format_id"] = (
                    "number$" + horserace_stages_output_format
                )
            elif (
                horserace_stages_output_format is not None
                and not horserace_stages_output_format.startswith("%")
                and "_" not in horserace_stages_output_format
            ):
                self.metadata["horserace"]["stages"]["type"] = "string"
                self.metadata["horserace"]["stages"]["type_id"] = (
                    "string$" + horserace_stages_input_format
                )
                self.metadata["horserace"]["stages"]["output_format_id"] = (
                    "string$" + horserace_stages_output_format
                )

        if horserace_category_output_format is not None:
            if (
                horserace_category_input_format is None
                and horserace_category_output_format is not None
            ):
                f"[horserace_category_input_format] and [horserace_category_output_format] must both be defined."
            elif (
                horserace_category_input_format is not None
                and horserace_category_output_format is None
            ):
                f"[horserace_category_input_format] and [horserace_category_output_format] must both be defined."
            if horserace_category_output_format.startswith("%"):
                self.metadata["horserace"]["category"]["type"] = "datetime"
                self.metadata["horserace"]["category"]["type_id"] = (
                    "datetime$" + horserace_category_input_format
                )
                self.metadata["horserace"]["category"]["output_format_id"] = (
                    "datetime$" + horserace_category_output_format
                )
            elif "_" in horserace_category_output_format:
                self.metadata["horserace"]["category"]["type"] = "number"
                self.metadata["horserace"]["category"]["type_id"] = (
                    "number$" + horserace_category_input_format
                )
                self.metadata["horserace"]["category"]["output_format_id"] = (
                    "number$" + horserace_category_output_format
                )
            elif (
                horserace_category_output_format is not None
                and not horserace_category_output_format.startswith("%")
                and "_" not in horserace_category_output_format
            ):
                self.metadata["horserace"]["category"]["type"] = "string"
                self.metadata["horserace"]["category"]["type_id"] = (
                    "string$" + horserace_category_input_format
                )
                self.metadata["horserace"]["category"]["output_format_id"] = (
                    "string$" + horserace_category_output_format
                )

        if horserace_pic_output_format is not None:
            if (
                horserace_pic_input_format is None
                and horserace_pic_output_format is not None
            ):
                f"[horserace_pic_input_format] and [horserace_pic_output_format] must both be defined."
            elif (
                horserace_pic_input_format is not None
                and horserace_pic_output_format is None
            ):
                f"[horserace_pic_input_format] and [horserace_pic_output_format] must both be defined."
            if horserace_pic_output_format.startswith("%"):
                self.metadata["horserace"]["pic"]["type"] = "datetime"
                self.metadata["horserace"]["pic"]["type_id"] = (
                    "datetime$" + horserace_pic_input_format
                )
                self.metadata["horserace"]["pic"]["output_format_id"] = (
                    "datetime$" + horserace_pic_output_format
                )
            elif "_" in horserace_pic_output_format:
                self.metadata["horserace"]["pic"]["type"] = "number"
                self.metadata["horserace"]["pic"]["type_id"] = (
                    "number$" + horserace_pic_input_format
                )
                self.metadata["horserace"]["pic"]["output_format_id"] = (
                    "number$" + horserace_pic_output_format
                )
            elif (
                horserace_pic_output_format is not None
                and not horserace_pic_output_format.startswith("%")
                and "_" not in horserace_pic_output_format
            ):
                self.metadata["horserace"]["pic"]["type"] = "string"
                self.metadata["horserace"]["pic"]["type_id"] = (
                    "string$" + horserace_pic_input_format
                )
                self.metadata["horserace"]["pic"]["output_format_id"] = (
                    "string$" + horserace_pic_output_format
                )

        if horserace_filter_output_format is not None:
            if (
                horserace_filter_input_format is None
                and horserace_filter_output_format is not None
            ):
                f"[horserace_filter_input_format] and [horserace_filter_output_format] must both be defined."
            elif (
                horserace_filter_input_format is not None
                and horserace_filter_output_format is None
            ):
                f"[horserace_filter_input_format] and [horserace_filter_output_format] must both be defined."
            if horserace_filter_output_format.startswith("%"):
                self.metadata["horserace"]["filter"]["type"] = "datetime"
                self.metadata["horserace"]["filter"]["type_id"] = (
                    "datetime$" + horserace_filter_input_format
                )
                self.metadata["horserace"]["filter"]["output_format_id"] = (
                    "datetime$" + horserace_filter_output_format
                )
            elif "_" in horserace_filter_output_format:
                self.metadata["horserace"]["filter"]["type"] = "number"
                self.metadata["horserace"]["filter"]["type_id"] = (
                    "number$" + horserace_filter_input_format
                )
                self.metadata["horserace"]["filter"]["output_format_id"] = (
                    "number$" + horserace_filter_output_format
                )
            elif (
                horserace_filter_output_format is not None
                and not horserace_filter_output_format.startswith("%")
                and "_" not in horserace_filter_output_format
            ):
                self.metadata["horserace"]["filter"]["type"] = "string"
                self.metadata["horserace"]["filter"]["type_id"] = (
                    "string$" + horserace_filter_input_format
                )
                self.metadata["horserace"]["filter"]["output_format_id"] = (
                    "string$" + horserace_filter_output_format
                )

        if captions_from_output_format is not None:
            if (
                captions_from_input_format is None
                and captions_from_output_format is not None
            ):
                f"[captions_from_input_format] and [captions_from_output_format] must both be defined."
            elif (
                captions_from_input_format is not None
                and captions_from_output_format is None
            ):
                f"[captions_from_input_format] and [captions_from_output_format] must both be defined."
            if captions_from_output_format.startswith("%"):
                self.metadata["captions"]["from"]["type"] = "datetime"
                self.metadata["captions"]["from"]["type_id"] = (
                    "datetime$" + captions_from_input_format
                )
                self.metadata["captions"]["from"]["output_format_id"] = (
                    "datetime$" + captions_from_output_format
                )
            elif "_" in captions_from_output_format:
                self.metadata["captions"]["from"]["type"] = "number"
                self.metadata["captions"]["from"]["type_id"] = (
                    "number$" + captions_from_input_format
                )
                self.metadata["captions"]["from"]["output_format_id"] = (
                    "number$" + captions_from_output_format
                )
            elif (
                captions_from_output_format is not None
                and not captions_from_output_format.startswith("%")
                and "_" not in captions_from_output_format
            ):
                self.metadata["captions"]["from"]["type"] = "string"
                self.metadata["captions"]["from"]["type_id"] = (
                    "string$" + captions_from_input_format
                )
                self.metadata["captions"]["from"]["output_format_id"] = (
                    "string$" + captions_from_output_format
                )

        if captions_to_output_format is not None:
            if (
                captions_to_input_format is None
                and captions_to_output_format is not None
            ):
                f"[captions_to_input_format] and [captions_to_output_format] must both be defined."
            elif (
                captions_to_input_format is not None
                and captions_to_output_format is None
            ):
                f"[captions_to_input_format] and [captions_to_output_format] must both be defined."
            if captions_to_output_format.startswith("%"):
                self.metadata["captions"]["to"]["type"] = "datetime"
                self.metadata["captions"]["to"]["type_id"] = (
                    "datetime$" + captions_to_input_format
                )
                self.metadata["captions"]["to"]["output_format_id"] = (
                    "datetime$" + captions_to_output_format
                )
            elif "_" in captions_to_output_format:
                self.metadata["captions"]["to"]["type"] = "number"
                self.metadata["captions"]["to"]["type_id"] = (
                    "number$" + captions_to_input_format
                )
                self.metadata["captions"]["to"]["output_format_id"] = (
                    "number$" + captions_to_output_format
                )
            elif (
                captions_to_output_format is not None
                and not captions_to_output_format.startswith("%")
                and "_" not in captions_to_output_format
            ):
                self.metadata["captions"]["to"]["type"] = "string"
                self.metadata["captions"]["to"]["type_id"] = (
                    "string$" + captions_to_input_format
                )
                self.metadata["captions"]["to"]["output_format_id"] = (
                    "string$" + captions_to_output_format
                )

        if captions_text_output_format is not None:
            if (
                captions_text_input_format is None
                and captions_text_output_format is not None
            ):
                f"[captions_text_input_format] and [captions_text_output_format] must both be defined."
            elif (
                captions_text_input_format is not None
                and captions_text_output_format is None
            ):
                f"[captions_text_input_format] and [captions_text_output_format] must both be defined."
            if captions_text_output_format.startswith("%"):
                self.metadata["captions"]["text"]["type"] = "datetime"
                self.metadata["captions"]["text"]["type_id"] = (
                    "datetime$" + captions_text_input_format
                )
                self.metadata["captions"]["text"]["output_format_id"] = (
                    "datetime$" + captions_text_output_format
                )
            elif "_" in captions_text_output_format:
                self.metadata["captions"]["text"]["type"] = "number"
                self.metadata["captions"]["text"]["type_id"] = (
                    "number$" + captions_text_input_format
                )
                self.metadata["captions"]["text"]["output_format_id"] = (
                    "number$" + captions_text_output_format
                )
            elif (
                captions_text_output_format is not None
                and not captions_text_output_format.startswith("%")
                and "_" not in captions_text_output_format
            ):
                self.metadata["captions"]["text"]["type"] = "string"
                self.metadata["captions"]["text"]["type_id"] = (
                    "string$" + captions_text_input_format
                )
                self.metadata["captions"]["text"]["output_format_id"] = (
                    "string$" + captions_text_output_format
                )

        if captions_image_output_format is not None:
            if (
                captions_image_input_format is None
                and captions_image_output_format is not None
            ):
                f"[captions_image_input_format] and [captions_image_output_format] must both be defined."
            elif (
                captions_image_input_format is not None
                and captions_image_output_format is None
            ):
                f"[captions_image_input_format] and [captions_image_output_format] must both be defined."
            if captions_image_output_format.startswith("%"):
                self.metadata["captions"]["image"]["type"] = "datetime"
                self.metadata["captions"]["image"]["type_id"] = (
                    "datetime$" + captions_image_input_format
                )
                self.metadata["captions"]["image"]["output_format_id"] = (
                    "datetime$" + captions_image_output_format
                )
            elif "_" in captions_image_output_format:
                self.metadata["captions"]["image"]["type"] = "number"
                self.metadata["captions"]["image"]["type_id"] = (
                    "number$" + captions_image_input_format
                )
                self.metadata["captions"]["image"]["output_format_id"] = (
                    "number$" + captions_image_output_format
                )
            elif (
                captions_image_output_format is not None
                and not captions_image_output_format.startswith("%")
                and "_" not in captions_image_output_format
            ):
                self.metadata["captions"]["image"]["type"] = "string"
                self.metadata["captions"]["image"]["type_id"] = (
                    "string$" + captions_image_input_format
                )
                self.metadata["captions"]["image"]["output_format_id"] = (
                    "string$" + captions_image_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_interactive_svg_data(
        self,
        data: pd.DataFrame = None,
        id: str = None,
        reveal_id: str = None,
        h3: str = None,
        h4: str = None,
        content: str = None,
        link: str = None,
        metadata: Union[list, str] = None,
    ):
        """
        Bind data to chart: interactive svg.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param id: ID. A column of IDs of elements in the uploaded SVG file. Flourish type hint: column
        :type id: str, optional

        :param reveal_id: Reveal layer. A column to reveal when layer is clicked. Flourish type hint: column
        :type reveal_id: str, optional

        :param h3: Heading 1. A column containing the main header. Flourish type hint: column
        :type h3: str, optional

        :param h4: Heading 2. A column containing a secondary header. Flourish type hint: column
        :type h4: str, optional

        :param content: Content. A column containing text or HTML to display. Flourish type hint: column
        :type content: str, optional

        :param link: Link. A URL that can be opened when a layer is clicked. Any reveal layers or popups will be overridden. Flourish type hint: column
        :type link: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom  popups and panels Flourish type hint: columns
        :type metadata: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {}

        if id is not None:
            assert id in data_columns, f"[id] is not a column in the data."
            self.bindings["data"]["id"] = id

        if reveal_id is not None:
            assert (
                reveal_id in data_columns
            ), f"[reveal_id] is not a column in the data."
            self.bindings["data"]["reveal_id"] = reveal_id

        if h3 is not None:
            assert h3 in data_columns, f"[h3] is not a column in the data."
            self.bindings["data"]["h3"] = h3

        if h4 is not None:
            assert h4 in data_columns, f"[h4] is not a column in the data."
            self.bindings["data"]["h4"] = h4

        if content is not None:
            assert content in data_columns, f"[content] is not a column in the data."
            self.bindings["data"]["content"] = content

        if link is not None:
            assert link in data_columns, f"[link] is not a column in the data."
            self.bindings["data"]["link"] = link

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_line_bar_pie_data(
        self,
        data: pd.DataFrame = None,
        label: str = None,
        value: Union[list, str] = None,
        facet: str = None,
        filter: str = None,
        metadata: Union[list, str] = None,
        facet_input_format: str = None,
        facet_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        label_input_format: str = None,
        label_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        value_input_format: str = None,
        value_output_format: str = None,
    ):
        """
        Bind data to chart: line, bar and pie charts.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param label: Labels/time. A column of names, numbers or datetimes. Suggested data type hints: string, datetime, number. Flourish type hint: column
        :type label: str, optional

        :param value: Values. One or more columns of numbers. The Preferred output format of the first column is used to format values. Suggested data type hints: number. Flourish type hint: columns
        :type value: Union[list, str], optional

        :param facet: Charts grid. If specified and  Grid of charts  view is on, creates a separate mini chart for each value found in the column. Suggested data type hints: string. Flourish type hint: column
        :type facet: str, optional

        :param filter: Row filter. Use this column to create a user-facing row control. To create a column filter, use the  Series filter  option in the settings panel instead. Suggested data type hints: string, datetime, number. Flourish type hint: column
        :type filter: str, optional

        :param metadata: Info for custom popups. One or more columns of information (text,  image URLs ,  embedded charts  etc) to include in custom  popups and panels Suggested data type hints: string, datetime, number. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param facet_input_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_input_format: str, optional
        :param facet_output_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param label_input_format: Formats/parses dates, strings, and numbers for the [label] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type label_input_format: str, optional
        :param label_output_format: Formats/parses dates, strings, and numbers for the [label] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type label_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param value_input_format: Formats/parses dates, strings, and numbers for the [value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type value_input_format: str, optional
        :param value_output_format: Formats/parses dates, strings, and numbers for the [value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type value_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "facet": {},
                "metadata": {},
                "label": {},
                "filter": {},
                "value": {},
            }
        }

        if label is not None:
            assert label in data_columns, f"[label] is not a column in the data."
            self.bindings["data"]["label"] = label

        if value is not None:
            if isinstance(value, list):
                for col in value:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["value"] = value
            elif isinstance(value, str):
                assert value in data_columns, f"[value] is not a column in the data."
                self.bindings["data"]["value"] = [value]
        else:
            self.bindings["data"]["value"] = []

        if facet is not None:
            assert facet in data_columns, f"[facet] is not a column in the data."
            self.bindings["data"]["facet"] = facet

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []

        if label_output_format is not None:
            if label_input_format is None and label_output_format is not None:
                f"[label_input_format] and [label_output_format] must both be defined."
            elif label_input_format is not None and label_output_format is None:
                f"[label_input_format] and [label_output_format] must both be defined."
            if label_output_format.startswith("%"):
                self.metadata["data"]["label"]["type"] = "datetime"
                self.metadata["data"]["label"]["type_id"] = (
                    "datetime$" + label_input_format
                )
                self.metadata["data"]["label"]["output_format_id"] = (
                    "datetime$" + label_output_format
                )
            elif "_" in label_output_format:
                self.metadata["data"]["label"]["type"] = "number"
                self.metadata["data"]["label"]["type_id"] = (
                    "number$" + label_input_format
                )
                self.metadata["data"]["label"]["output_format_id"] = (
                    "number$" + label_output_format
                )
            elif (
                label_output_format is not None
                and not label_output_format.startswith("%")
                and "_" not in label_output_format
            ):
                self.metadata["data"]["label"]["type"] = "string"
                self.metadata["data"]["label"]["type_id"] = (
                    "string$" + label_input_format
                )
                self.metadata["data"]["label"]["output_format_id"] = (
                    "string$" + label_output_format
                )

        if value_output_format is not None:
            if value_input_format is None and value_output_format is not None:
                f"[value_input_format] and [value_output_format] must both be defined."
            elif value_input_format is not None and value_output_format is None:
                f"[value_input_format] and [value_output_format] must both be defined."
            if value_output_format.startswith("%"):
                self.metadata["data"]["value"]["type"] = "datetime"
                self.metadata["data"]["value"]["type_id"] = (
                    "datetime$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "datetime$" + value_output_format
                )
            elif "_" in value_output_format:
                self.metadata["data"]["value"]["type"] = "number"
                self.metadata["data"]["value"]["type_id"] = (
                    "number$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "number$" + value_output_format
                )
            elif (
                value_output_format is not None
                and not value_output_format.startswith("%")
                and "_" not in value_output_format
            ):
                self.metadata["data"]["value"]["type"] = "string"
                self.metadata["data"]["value"]["type_id"] = (
                    "string$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "string$" + value_output_format
                )

        if facet_output_format is not None:
            if facet_input_format is None and facet_output_format is not None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            elif facet_input_format is not None and facet_output_format is None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            if facet_output_format.startswith("%"):
                self.metadata["data"]["facet"]["type"] = "datetime"
                self.metadata["data"]["facet"]["type_id"] = (
                    "datetime$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "datetime$" + facet_output_format
                )
            elif "_" in facet_output_format:
                self.metadata["data"]["facet"]["type"] = "number"
                self.metadata["data"]["facet"]["type_id"] = (
                    "number$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "number$" + facet_output_format
                )
            elif (
                facet_output_format is not None
                and not facet_output_format.startswith("%")
                and "_" not in facet_output_format
            ):
                self.metadata["data"]["facet"]["type"] = "string"
                self.metadata["data"]["facet"]["type_id"] = (
                    "string$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "string$" + facet_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["data"]["metadata"]["type"] = "datetime"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["data"]["metadata"]["type"] = "number"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["data"]["metadata"]["type"] = "string"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_marimekko_data(
        self,
        data: pd.DataFrame = None,
        name: str = None,
        unstacked_value: str = None,
        stacked_values: Union[list, str] = None,
        facet: str = None,
        category: str = None,
        filter: str = None,
        metadata: Union[list, str] = None,
        category_input_format: str = None,
        category_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        facet_input_format: str = None,
        facet_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        name_input_format: str = None,
        name_output_format: str = None,
        unstacked_value_input_format: str = None,
        unstacked_value_output_format: str = None,
        stacked_values_input_format: str = None,
        stacked_values_output_format: str = None,
    ):
        """
        Bind data to chart: marimekko.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param name: Name
        :type name: str, optional

        :param unstacked_value: Unstacked value
        :type unstacked_value: str, optional

        :param stacked_values: Secondary metric. One or more numeric columns. Each column will form a segment of a stacked bar. Flourish type hint: columns
        :type stacked_values: Union[list, str], optional

        :param facet: Facet
        :type facet: str, optional

        :param category: Color category. Suggested data type hints: string. Flourish type hint: column
        :type category: str, optional

        :param filter: Filter by. (Optional) Choose a categorical column to filter by. A dropdown will appear in the visualization. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type filter: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Suggested data type hints: number, string, datetime. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param category_input_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_input_format: str, optional
        :param category_output_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param facet_input_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_input_format: str, optional
        :param facet_output_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param name_input_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_input_format: str, optional
        :param name_output_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_output_format: str, optional
        :param unstacked_value_input_format: Formats/parses dates, strings, and numbers for the [unstacked_value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type unstacked_value_input_format: str, optional
        :param unstacked_value_output_format: Formats/parses dates, strings, and numbers for the [unstacked_value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type unstacked_value_output_format: str, optional
        :param stacked_values_input_format: Formats/parses dates, strings, and numbers for the [stacked_values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type stacked_values_input_format: str, optional
        :param stacked_values_output_format: Formats/parses dates, strings, and numbers for the [stacked_values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type stacked_values_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "category": {},
                "filter": {},
                "facet": {},
                "metadata": {},
                "name": {},
                "unstacked_value": {},
                "stacked_values": {},
            }
        }

        if name is not None:
            assert name in data_columns, f"[name] is not a column in the data."
            self.bindings["data"]["name"] = name

        if unstacked_value is not None:
            assert (
                unstacked_value in data_columns
            ), f"[unstacked_value] is not a column in the data."
            self.bindings["data"]["unstacked_value"] = unstacked_value

        if stacked_values is not None:
            if isinstance(stacked_values, list):
                for col in stacked_values:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["stacked_values"] = stacked_values
            elif isinstance(stacked_values, str):
                assert (
                    stacked_values in data_columns
                ), f"[stacked_values] is not a column in the data."
                self.bindings["data"]["stacked_values"] = [stacked_values]
        else:
            self.bindings["data"]["stacked_values"] = []

        if facet is not None:
            assert facet in data_columns, f"[facet] is not a column in the data."
            self.bindings["data"]["facet"] = facet

        if category is not None:
            assert category in data_columns, f"[category] is not a column in the data."
            self.bindings["data"]["category"] = category

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []

        if name_output_format is not None:
            if name_input_format is None and name_output_format is not None:
                f"[name_input_format] and [name_output_format] must both be defined."
            elif name_input_format is not None and name_output_format is None:
                f"[name_input_format] and [name_output_format] must both be defined."
            if name_output_format.startswith("%"):
                self.metadata["data"]["name"]["type"] = "datetime"
                self.metadata["data"]["name"]["type_id"] = (
                    "datetime$" + name_input_format
                )
                self.metadata["data"]["name"]["output_format_id"] = (
                    "datetime$" + name_output_format
                )
            elif "_" in name_output_format:
                self.metadata["data"]["name"]["type"] = "number"
                self.metadata["data"]["name"]["type_id"] = "number$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "number$" + name_output_format
                )
            elif (
                name_output_format is not None
                and not name_output_format.startswith("%")
                and "_" not in name_output_format
            ):
                self.metadata["data"]["name"]["type"] = "string"
                self.metadata["data"]["name"]["type_id"] = "string$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "string$" + name_output_format
                )

        if unstacked_value_output_format is not None:
            if (
                unstacked_value_input_format is None
                and unstacked_value_output_format is not None
            ):
                f"[unstacked_value_input_format] and [unstacked_value_output_format] must both be defined."
            elif (
                unstacked_value_input_format is not None
                and unstacked_value_output_format is None
            ):
                f"[unstacked_value_input_format] and [unstacked_value_output_format] must both be defined."
            if unstacked_value_output_format.startswith("%"):
                self.metadata["data"]["unstacked_value"]["type"] = "datetime"
                self.metadata["data"]["unstacked_value"]["type_id"] = (
                    "datetime$" + unstacked_value_input_format
                )
                self.metadata["data"]["unstacked_value"]["output_format_id"] = (
                    "datetime$" + unstacked_value_output_format
                )
            elif "_" in unstacked_value_output_format:
                self.metadata["data"]["unstacked_value"]["type"] = "number"
                self.metadata["data"]["unstacked_value"]["type_id"] = (
                    "number$" + unstacked_value_input_format
                )
                self.metadata["data"]["unstacked_value"]["output_format_id"] = (
                    "number$" + unstacked_value_output_format
                )
            elif (
                unstacked_value_output_format is not None
                and not unstacked_value_output_format.startswith("%")
                and "_" not in unstacked_value_output_format
            ):
                self.metadata["data"]["unstacked_value"]["type"] = "string"
                self.metadata["data"]["unstacked_value"]["type_id"] = (
                    "string$" + unstacked_value_input_format
                )
                self.metadata["data"]["unstacked_value"]["output_format_id"] = (
                    "string$" + unstacked_value_output_format
                )

        if stacked_values_output_format is not None:
            if (
                stacked_values_input_format is None
                and stacked_values_output_format is not None
            ):
                f"[stacked_values_input_format] and [stacked_values_output_format] must both be defined."
            elif (
                stacked_values_input_format is not None
                and stacked_values_output_format is None
            ):
                f"[stacked_values_input_format] and [stacked_values_output_format] must both be defined."
            if stacked_values_output_format.startswith("%"):
                self.metadata["data"]["stacked_values"]["type"] = "datetime"
                self.metadata["data"]["stacked_values"]["type_id"] = (
                    "datetime$" + stacked_values_input_format
                )
                self.metadata["data"]["stacked_values"]["output_format_id"] = (
                    "datetime$" + stacked_values_output_format
                )
            elif "_" in stacked_values_output_format:
                self.metadata["data"]["stacked_values"]["type"] = "number"
                self.metadata["data"]["stacked_values"]["type_id"] = (
                    "number$" + stacked_values_input_format
                )
                self.metadata["data"]["stacked_values"]["output_format_id"] = (
                    "number$" + stacked_values_output_format
                )
            elif (
                stacked_values_output_format is not None
                and not stacked_values_output_format.startswith("%")
                and "_" not in stacked_values_output_format
            ):
                self.metadata["data"]["stacked_values"]["type"] = "string"
                self.metadata["data"]["stacked_values"]["type_id"] = (
                    "string$" + stacked_values_input_format
                )
                self.metadata["data"]["stacked_values"]["output_format_id"] = (
                    "string$" + stacked_values_output_format
                )

        if facet_output_format is not None:
            if facet_input_format is None and facet_output_format is not None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            elif facet_input_format is not None and facet_output_format is None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            if facet_output_format.startswith("%"):
                self.metadata["data"]["facet"]["type"] = "datetime"
                self.metadata["data"]["facet"]["type_id"] = (
                    "datetime$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "datetime$" + facet_output_format
                )
            elif "_" in facet_output_format:
                self.metadata["data"]["facet"]["type"] = "number"
                self.metadata["data"]["facet"]["type_id"] = (
                    "number$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "number$" + facet_output_format
                )
            elif (
                facet_output_format is not None
                and not facet_output_format.startswith("%")
                and "_" not in facet_output_format
            ):
                self.metadata["data"]["facet"]["type"] = "string"
                self.metadata["data"]["facet"]["type_id"] = (
                    "string$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "string$" + facet_output_format
                )

        if category_output_format is not None:
            if category_input_format is None and category_output_format is not None:
                f"[category_input_format] and [category_output_format] must both be defined."
            elif category_input_format is not None and category_output_format is None:
                f"[category_input_format] and [category_output_format] must both be defined."
            if category_output_format.startswith("%"):
                self.metadata["data"]["category"]["type"] = "datetime"
                self.metadata["data"]["category"]["type_id"] = (
                    "datetime$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "datetime$" + category_output_format
                )
            elif "_" in category_output_format:
                self.metadata["data"]["category"]["type"] = "number"
                self.metadata["data"]["category"]["type_id"] = (
                    "number$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "number$" + category_output_format
                )
            elif (
                category_output_format is not None
                and not category_output_format.startswith("%")
                and "_" not in category_output_format
            ):
                self.metadata["data"]["category"]["type"] = "string"
                self.metadata["data"]["category"]["type_id"] = (
                    "string$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "string$" + category_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["data"]["metadata"]["type"] = "datetime"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["data"]["metadata"]["type"] = "number"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["data"]["metadata"]["type"] = "string"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_network_graph_data(
        self,
        links_data: pd.DataFrame = None,
        nodes_data: pd.DataFrame = None,
        links_source: str = None,
        links_target: str = None,
        links_value: str = None,
        nodes_id: str = None,
        nodes_group: str = None,
        nodes_size: str = None,
        nodes_image: str = None,
        nodes_metadata: Union[list, str] = None,
    ):
        """
        Bind data to chart: network graph.

        :param links_data: Links data. defaults to None
        :type links_data: pd.DataFrame, optional
        :param nodes_data: Nodes data. defaults to None
        :type nodes_data: pd.DataFrame, optional

        :param links_source: Links source
        :type links_source: str, optional

        :param links_target: Links target
        :type links_target: str, optional

        :param links_value: Size by. A numerical value used to set the thickness of the links. Flourish type hint: column
        :type links_value: str, optional

        :param nodes_id: ID. A unique identifier for each point in the network. If not specified, point information will be extracted from the links sheet. Flourish type hint: column
        :type nodes_id: str, optional

        :param nodes_group: Color by. A group to which the point belongs. If set, can be used to color the points. Ignored if ID not set. Flourish type hint: column
        :type nodes_group: str, optional

        :param nodes_size: Size by. A numerical value used to size the points. Ignored if ID not set. Flourish type hint: column
        :type nodes_size: str, optional

        :param nodes_image: Image. An image to go into the circle. Flourish type hint: column
        :type nodes_image: str, optional

        :param nodes_metadata: Info for popups. One or more columns of information (text,  image URLs ,  embedded charts  etc) to include in  popups and panels Ignored if ID not set. Flourish type hint: columns
        :type nodes_metadata: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["links"] = {}
        self.data_properties["links"] = {}
        if links_data is not None:
            links_columns = set(links_data.columns)
            int_columns_links_data = links_data.select_dtypes(include="int").columns
            links_data[int_columns_links_data] = links_data[
                int_columns_links_data
            ].astype(str)
            self.data_properties["links"] = links_data.to_dict(orient="records")

        self.bindings["nodes"] = {}
        self.data_properties["nodes"] = {}
        if nodes_data is not None:
            nodes_columns = set(nodes_data.columns)
            int_columns_nodes_data = nodes_data.select_dtypes(include="int").columns
            nodes_data[int_columns_nodes_data] = nodes_data[
                int_columns_nodes_data
            ].astype(str)
            self.data_properties["nodes"] = nodes_data.to_dict(orient="records")
        self.metadata = {}

        if links_source is not None:
            assert (
                links_source in links_columns
            ), f"[links_source] is not a column in the data."
            self.bindings["links"]["source"] = links_source

        if links_target is not None:
            assert (
                links_target in links_columns
            ), f"[links_target] is not a column in the data."
            self.bindings["links"]["target"] = links_target

        if links_value is not None:
            assert (
                links_value in links_columns
            ), f"[links_value] is not a column in the data."
            self.bindings["links"]["value"] = links_value

        if nodes_id is not None:
            assert nodes_id in nodes_columns, f"[nodes_id] is not a column in the data."
            self.bindings["nodes"]["id"] = nodes_id

        if nodes_group is not None:
            assert (
                nodes_group in nodes_columns
            ), f"[nodes_group] is not a column in the data."
            self.bindings["nodes"]["group"] = nodes_group

        if nodes_size is not None:
            assert (
                nodes_size in nodes_columns
            ), f"[nodes_size] is not a column in the data."
            self.bindings["nodes"]["size"] = nodes_size

        if nodes_image is not None:
            assert (
                nodes_image in nodes_columns
            ), f"[nodes_image] is not a column in the data."
            self.bindings["nodes"]["image"] = nodes_image

        if nodes_metadata is not None:
            if isinstance(nodes_metadata, list):
                for col in nodes_metadata:
                    assert (
                        col in nodes_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["nodes"]["metadata"] = nodes_metadata
            elif isinstance(nodes_metadata, str):
                assert (
                    nodes_metadata in nodes_columns
                ), f"[nodes_metadata] is not a column in the data."
                self.bindings["nodes"]["metadata"] = [nodes_metadata]
        else:
            self.bindings["nodes"]["metadata"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_parliament_chart_data(
        self,
        data: pd.DataFrame = None,
        party: str = None,
        seats: Union[list, str] = None,
    ):
        """
        Bind data to chart: parliament chart.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param party: Party
        :type party: str, optional

        :param seats: Seats. This should point to the column with election data. Flourish type hint: columns
        :type seats: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {}

        if party is not None:
            assert party in data_columns, f"[party] is not a column in the data."
            self.bindings["data"]["party"] = party

        if seats is not None:
            if isinstance(seats, list):
                for col in seats:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["seats"] = seats
            elif isinstance(seats, str):
                assert seats in data_columns, f"[seats] is not a column in the data."
                self.bindings["data"]["seats"] = [seats]
        else:
            self.bindings["data"]["seats"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_pictogram_data(
        self,
        data: pd.DataFrame = None,
        icons_data: pd.DataFrame = None,
        main_category: str = None,
        sub_category: str = None,
        values: Union[list, str] = None,
        icon_id: str = None,
        color: str = None,
        metadata: Union[list, str] = None,
        icons_id: str = None,
        icons_path_string: str = None,
        icons_width: str = None,
        icons_height: str = None,
    ):
        """
        Bind data to chart: pictogram.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional
        :param icons_data: Icons data. defaults to None
        :type icons_data: pd.DataFrame, optional

        :param main_category: Main category. The (categorical) column that defines the categories along the main axis. Flourish type hint: column
        :type main_category: str, optional

        :param sub_category: Subcategory. The (categorical) column that defines the categories within each bar. Flourish type hint: column
        :type sub_category: str, optional

        :param values: Values. (Optional) Choose the numeric columns to determine the size of each bar.  If more than 1 is chosen, a dropdown will appear in the visualization, which lets the user choose. Flourish type hint: columns
        :type values: Union[list, str], optional

        :param icon_id: Icon ID. IDs for joining icons in the Icons datasheet.  Must contain IDs that match Icon ID values in Icons Set to the same column as the Main category or Subcategory. Flourish type hint: column
        :type icon_id: str, optional

        :param color: Color. The (categorical) column which determines the icon color. Set to the same column as the Main category or Subcategory. Flourish type hint: column
        :type color: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Flourish type hint: columns
        :type metadata: Union[list, str], optional

        :param icons_id: Icon ID. Unique ID for joining icon path strings. Must contain IDs that match the Icon ID values in DataFlourish type hint: column
        :type icons_id: str, optional

        :param icons_path_string: Icon. Icon path string (e.g. "M10,10 l80,0 l0,80 l-80,0 z") or the name of a built-in icon (e.g. "female"). Flourish type hint: column
        :type icons_path_string: str, optional

        :param icons_width: Icon width. Icon width (in pixels). Flourish type hint: column
        :type icons_width: str, optional

        :param icons_height: Icon height. Icon height (in pixels). Flourish type hint: column
        :type icons_height: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")

        self.bindings["icons"] = {}
        self.data_properties["icons"] = {}
        if icons_data is not None:
            icons_columns = set(icons_data.columns)
            int_columns_icons_data = icons_data.select_dtypes(include="int").columns
            icons_data[int_columns_icons_data] = icons_data[
                int_columns_icons_data
            ].astype(str)
            self.data_properties["icons"] = icons_data.to_dict(orient="records")
        self.metadata = {}

        if main_category is not None:
            assert (
                main_category in data_columns
            ), f"[main_category] is not a column in the data."
            self.bindings["data"]["main_category"] = main_category

        if sub_category is not None:
            assert (
                sub_category in data_columns
            ), f"[sub_category] is not a column in the data."
            self.bindings["data"]["sub_category"] = sub_category

        if values is not None:
            if isinstance(values, list):
                for col in values:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["values"] = values
            elif isinstance(values, str):
                assert values in data_columns, f"[values] is not a column in the data."
                self.bindings["data"]["values"] = [values]
        else:
            self.bindings["data"]["values"] = []

        if icon_id is not None:
            assert icon_id in data_columns, f"[icon_id] is not a column in the data."
            self.bindings["data"]["icon_id"] = icon_id

        if color is not None:
            assert color in data_columns, f"[color] is not a column in the data."
            self.bindings["data"]["color"] = color

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []

        if icons_id is not None:
            assert icons_id in icons_columns, f"[icons_id] is not a column in the data."
            self.bindings["icons"]["id"] = icons_id

        if icons_path_string is not None:
            assert (
                icons_path_string in icons_columns
            ), f"[icons_path_string] is not a column in the data."
            self.bindings["icons"]["path_string"] = icons_path_string

        if icons_width is not None:
            assert (
                icons_width in icons_columns
            ), f"[icons_width] is not a column in the data."
            self.bindings["icons"]["width"] = icons_width

        if icons_height is not None:
            assert (
                icons_height in icons_columns
            ), f"[icons_height] is not a column in the data."
            self.bindings["icons"]["height"] = icons_height
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_quiz_data(
        self,
        questions_data: pd.DataFrame = None,
        scores_data: pd.DataFrame = None,
        results_data: pd.DataFrame = None,
        questions_text: str = None,
        questions_explanation: str = None,
        questions_input_type: str = None,
        questions_answers: Union[list, str] = None,
        questions_suffix: str = None,
        questions_choices: str = None,
        scores_question: str = None,
        scores_range: str = None,
        scores_explanation: str = None,
        scores_media: str = None,
        results_range: str = None,
        results_text: str = None,
        results_media: str = None,
    ):
        """
        Bind data to chart: quiz.

        :param questions_data: Questions data. defaults to None
        :type questions_data: pd.DataFrame, optional
        :param scores_data: Scores data. defaults to None
        :type scores_data: pd.DataFrame, optional
        :param results_data: Results data. defaults to None
        :type results_data: pd.DataFrame, optional

        :param questions_text: Text. Question text. Flourish type hint: column
        :type questions_text: str, optional

        :param questions_explanation: Explanation. A short text explanation accompanying the question. Flourish type hint: column
        :type questions_explanation: str, optional

        :param questions_input_type: Input type. Type of answer input, choose between slider or multiple choice Flourish type hint: column
        :type questions_input_type: str, optional

        :param questions_answers: Answers. The correct answer to the question. The score will be decided by the difference between this answer and your input.  Its possible to select multiple columns with answers; this will create a dropdown list above the quiz where you can select which answer to compare to. Flourish type hint: columns
        :type questions_answers: Union[list, str], optional

        :param questions_suffix: Slider input suffix. Add a suffix after the value, eg. "%" or "people" (only for slider input type). Flourish type hint: column
        :type questions_suffix: str, optional

        :param questions_choices: Multiple choice options. Options to show in multiple choice questions. Divide using "::" (eg. "Cat :: Dog :: Sheep :: Badger"). Flourish type hint: column
        :type questions_choices: str, optional

        :param scores_question: Question. Question that the answer belongs to. Flourish type hint: column
        :type scores_question: str, optional

        :param scores_range: Answer. The answer to the question. This can be text for multiple choice questions. For slider answers, you can use numbers or number ranges, values could be "0-10" or "4" or "*" to select all answers.  You can also add multiple rows with score ranges per question; the more specific scores will take priority (e.g. it will choose "4" over "0-10" over "*"). Flourish type hint: column
        :type scores_range: str, optional

        :param scores_explanation: Text. Text to show after answering question. Flourish type hint: column
        :type scores_explanation: str, optional

        :param scores_media: Media. Picture to show after answering question. Flourish type hint: column
        :type scores_media: str, optional

        :param results_range: Points range. A range of points youre targeting. You can use numbers or number ranges, values could be "0-10" or "4" or "*" to select all answers.  You can also add multiple rows with score ranges per question; the more specific scores will take priority (e.g. it will choose "4" over "0-10" over "*"). Flourish type hint: column
        :type results_range: str, optional

        :param results_text: Results text
        :type results_text: str, optional

        :param results_media: Media. An image to show with the result. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type results_media: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["questions"] = {}
        self.data_properties["questions"] = {}
        if questions_data is not None:
            questions_columns = set(questions_data.columns)
            int_columns_questions_data = questions_data.select_dtypes(
                include="int"
            ).columns
            questions_data[int_columns_questions_data] = questions_data[
                int_columns_questions_data
            ].astype(str)
            self.data_properties["questions"] = questions_data.to_dict(orient="records")

        self.bindings["scores"] = {}
        self.data_properties["scores"] = {}
        if scores_data is not None:
            scores_columns = set(scores_data.columns)
            int_columns_scores_data = scores_data.select_dtypes(include="int").columns
            scores_data[int_columns_scores_data] = scores_data[
                int_columns_scores_data
            ].astype(str)
            self.data_properties["scores"] = scores_data.to_dict(orient="records")

        self.bindings["results"] = {}
        self.data_properties["results"] = {}
        if results_data is not None:
            results_columns = set(results_data.columns)
            int_columns_results_data = results_data.select_dtypes(include="int").columns
            results_data[int_columns_results_data] = results_data[
                int_columns_results_data
            ].astype(str)
            self.data_properties["results"] = results_data.to_dict(orient="records")
        self.metadata = {}

        if questions_text is not None:
            assert (
                questions_text in questions_columns
            ), f"[questions_text] is not a column in the data."
            self.bindings["questions"]["text"] = questions_text

        if questions_explanation is not None:
            assert (
                questions_explanation in questions_columns
            ), f"[questions_explanation] is not a column in the data."
            self.bindings["questions"]["explanation"] = questions_explanation

        if questions_input_type is not None:
            assert (
                questions_input_type in questions_columns
            ), f"[questions_input_type] is not a column in the data."
            self.bindings["questions"]["input_type"] = questions_input_type

        if questions_answers is not None:
            if isinstance(questions_answers, list):
                for col in questions_answers:
                    assert (
                        col in questions_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["questions"]["answers"] = questions_answers
            elif isinstance(questions_answers, str):
                assert (
                    questions_answers in questions_columns
                ), f"[questions_answers] is not a column in the data."
                self.bindings["questions"]["answers"] = [questions_answers]
        else:
            self.bindings["questions"]["answers"] = []

        if questions_suffix is not None:
            assert (
                questions_suffix in questions_columns
            ), f"[questions_suffix] is not a column in the data."
            self.bindings["questions"]["suffix"] = questions_suffix

        if questions_choices is not None:
            assert (
                questions_choices in questions_columns
            ), f"[questions_choices] is not a column in the data."
            self.bindings["questions"]["choices"] = questions_choices

        if scores_question is not None:
            assert (
                scores_question in scores_columns
            ), f"[scores_question] is not a column in the data."
            self.bindings["scores"]["question"] = scores_question

        if scores_range is not None:
            assert (
                scores_range in scores_columns
            ), f"[scores_range] is not a column in the data."
            self.bindings["scores"]["range"] = scores_range

        if scores_explanation is not None:
            assert (
                scores_explanation in scores_columns
            ), f"[scores_explanation] is not a column in the data."
            self.bindings["scores"]["explanation"] = scores_explanation

        if scores_media is not None:
            assert (
                scores_media in scores_columns
            ), f"[scores_media] is not a column in the data."
            self.bindings["scores"]["media"] = scores_media

        if results_range is not None:
            assert (
                results_range in results_columns
            ), f"[results_range] is not a column in the data."
            self.bindings["results"]["range"] = results_range

        if results_text is not None:
            assert (
                results_text in results_columns
            ), f"[results_text] is not a column in the data."
            self.bindings["results"]["text"] = results_text

        if results_media is not None:
            assert (
                results_media in results_columns
            ), f"[results_media] is not a column in the data."
            self.bindings["results"]["media"] = results_media
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_radar_data(
        self,
        data: pd.DataFrame = None,
        name: str = None,
        values: Union[list, str] = None,
        filter: str = None,
        color_category: str = None,
        facet: Union[list, str] = None,
        metadata: Union[list, str] = None,
        color_category_input_format: str = None,
        color_category_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        facet_input_format: str = None,
        facet_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        name_input_format: str = None,
        name_output_format: str = None,
        values_input_format: str = None,
        values_output_format: str = None,
    ):
        """
        Bind data to chart: radar chart.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param name: Name. A text column containing a name for each radar. Suggested data type hints: string. Flourish type hint: column
        :type name: str, optional

        :param values: Values. Select three or more numerical columns. Suggested data type hints: number. Flourish type hint: columns
        :type values: Union[list, str], optional

        :param filter: Filter. If set, creates a filter menu or time slider. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type filter: str, optional

        :param color_category: Color category. Add a category to color by If empty, the name column will be used for colors. Suggested data type hints: string. Flourish type hint: column
        :type color_category: str, optional

        :param facet: Grid of charts (facet). Create one column for each grouping you want to allow. Suggested data type hints: string. Flourish type hint: columns
        :type facet: Union[list, str], optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom popups and panels Suggested data type hints: string, datetime, number. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param color_category_input_format: Formats/parses dates, strings, and numbers for the [color_category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_category_input_format: str, optional
        :param color_category_output_format: Formats/parses dates, strings, and numbers for the [color_category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_category_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param facet_input_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_input_format: str, optional
        :param facet_output_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param name_input_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_input_format: str, optional
        :param name_output_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_output_format: str, optional
        :param values_input_format: Formats/parses dates, strings, and numbers for the [values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type values_input_format: str, optional
        :param values_output_format: Formats/parses dates, strings, and numbers for the [values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type values_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "color_category": {},
                "filter": {},
                "facet": {},
                "metadata": {},
                "name": {},
                "values": {},
            }
        }

        if name is not None:
            assert name in data_columns, f"[name] is not a column in the data."
            self.bindings["data"]["name"] = name

        if values is not None:
            if isinstance(values, list):
                for col in values:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["values"] = values
            elif isinstance(values, str):
                assert values in data_columns, f"[values] is not a column in the data."
                self.bindings["data"]["values"] = [values]
        else:
            self.bindings["data"]["values"] = []

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if color_category is not None:
            assert (
                color_category in data_columns
            ), f"[color_category] is not a column in the data."
            self.bindings["data"]["color_category"] = color_category

        if facet is not None:
            if isinstance(facet, list):
                for col in facet:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["facet"] = facet
            elif isinstance(facet, str):
                assert facet in data_columns, f"[facet] is not a column in the data."
                self.bindings["data"]["facet"] = [facet]
        else:
            self.bindings["data"]["facet"] = []

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []

        if name_output_format is not None:
            if name_input_format is None and name_output_format is not None:
                f"[name_input_format] and [name_output_format] must both be defined."
            elif name_input_format is not None and name_output_format is None:
                f"[name_input_format] and [name_output_format] must both be defined."
            if name_output_format.startswith("%"):
                self.metadata["data"]["name"]["type"] = "datetime"
                self.metadata["data"]["name"]["type_id"] = (
                    "datetime$" + name_input_format
                )
                self.metadata["data"]["name"]["output_format_id"] = (
                    "datetime$" + name_output_format
                )
            elif "_" in name_output_format:
                self.metadata["data"]["name"]["type"] = "number"
                self.metadata["data"]["name"]["type_id"] = "number$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "number$" + name_output_format
                )
            elif (
                name_output_format is not None
                and not name_output_format.startswith("%")
                and "_" not in name_output_format
            ):
                self.metadata["data"]["name"]["type"] = "string"
                self.metadata["data"]["name"]["type_id"] = "string$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "string$" + name_output_format
                )

        if values_output_format is not None:
            if values_input_format is None and values_output_format is not None:
                f"[values_input_format] and [values_output_format] must both be defined."
            elif values_input_format is not None and values_output_format is None:
                f"[values_input_format] and [values_output_format] must both be defined."
            if values_output_format.startswith("%"):
                self.metadata["data"]["values"]["type"] = "datetime"
                self.metadata["data"]["values"]["type_id"] = (
                    "datetime$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "datetime$" + values_output_format
                )
            elif "_" in values_output_format:
                self.metadata["data"]["values"]["type"] = "number"
                self.metadata["data"]["values"]["type_id"] = (
                    "number$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "number$" + values_output_format
                )
            elif (
                values_output_format is not None
                and not values_output_format.startswith("%")
                and "_" not in values_output_format
            ):
                self.metadata["data"]["values"]["type"] = "string"
                self.metadata["data"]["values"]["type_id"] = (
                    "string$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "string$" + values_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if color_category_output_format is not None:
            if (
                color_category_input_format is None
                and color_category_output_format is not None
            ):
                f"[color_category_input_format] and [color_category_output_format] must both be defined."
            elif (
                color_category_input_format is not None
                and color_category_output_format is None
            ):
                f"[color_category_input_format] and [color_category_output_format] must both be defined."
            if color_category_output_format.startswith("%"):
                self.metadata["data"]["color_category"]["type"] = "datetime"
                self.metadata["data"]["color_category"]["type_id"] = (
                    "datetime$" + color_category_input_format
                )
                self.metadata["data"]["color_category"]["output_format_id"] = (
                    "datetime$" + color_category_output_format
                )
            elif "_" in color_category_output_format:
                self.metadata["data"]["color_category"]["type"] = "number"
                self.metadata["data"]["color_category"]["type_id"] = (
                    "number$" + color_category_input_format
                )
                self.metadata["data"]["color_category"]["output_format_id"] = (
                    "number$" + color_category_output_format
                )
            elif (
                color_category_output_format is not None
                and not color_category_output_format.startswith("%")
                and "_" not in color_category_output_format
            ):
                self.metadata["data"]["color_category"]["type"] = "string"
                self.metadata["data"]["color_category"]["type_id"] = (
                    "string$" + color_category_input_format
                )
                self.metadata["data"]["color_category"]["output_format_id"] = (
                    "string$" + color_category_output_format
                )

        if facet_output_format is not None:
            if facet_input_format is None and facet_output_format is not None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            elif facet_input_format is not None and facet_output_format is None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            if facet_output_format.startswith("%"):
                self.metadata["data"]["facet"]["type"] = "datetime"
                self.metadata["data"]["facet"]["type_id"] = (
                    "datetime$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "datetime$" + facet_output_format
                )
            elif "_" in facet_output_format:
                self.metadata["data"]["facet"]["type"] = "number"
                self.metadata["data"]["facet"]["type_id"] = (
                    "number$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "number$" + facet_output_format
                )
            elif (
                facet_output_format is not None
                and not facet_output_format.startswith("%")
                and "_" not in facet_output_format
            ):
                self.metadata["data"]["facet"]["type"] = "string"
                self.metadata["data"]["facet"]["type_id"] = (
                    "string$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "string$" + facet_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["data"]["metadata"]["type"] = "datetime"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["data"]["metadata"]["type"] = "number"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["data"]["metadata"]["type"] = "string"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_sankey_data(
        self,
        data: pd.DataFrame = None,
        source: str = None,
        target: str = None,
        value: str = None,
        filter: str = None,
        facet: str = None,
        step_from: str = None,
        step_to: str = None,
        metadata: Union[list, str] = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        facet_input_format: str = None,
        facet_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        source_input_format: str = None,
        source_output_format: str = None,
        step_from_input_format: str = None,
        step_from_output_format: str = None,
        step_to_input_format: str = None,
        step_to_output_format: str = None,
        target_input_format: str = None,
        target_output_format: str = None,
        value_input_format: str = None,
        value_output_format: str = None,
    ):
        """
        Bind data to chart: sankey diagram.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param source: Source. Suggested data type hints: string. Flourish type hint: column
        :type source: str, optional

        :param target: Target. Suggested data type hints: string. Flourish type hint: column
        :type target: str, optional

        :param value: Value of link. A numerical value used to set the thickness of the links. Suggested data type hints: number. Flourish type hint: column
        :type value: str, optional

        :param filter: Filter. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type filter: str, optional

        :param facet: Grid of charts. Suggested data type hints: string. Flourish type hint: column
        :type facet: str, optional

        :param step_from: Step from. An integer(whole number) used to indicate where a link starts from (used only in Alluvial mode). Suggested data type hints: number. Flourish type hint: column
        :type step_from: str, optional

        :param step_to: Step to. An integer(whole number) used to indicate where a link goes to (used only in Alluvial mode). Suggested data type hints: number. Flourish type hint: column
        :type step_to: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Suggested data type hints: number, datetime, string. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param facet_input_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_input_format: str, optional
        :param facet_output_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param source_input_format: Formats/parses dates, strings, and numbers for the [source] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type source_input_format: str, optional
        :param source_output_format: Formats/parses dates, strings, and numbers for the [source] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type source_output_format: str, optional
        :param step_from_input_format: Formats/parses dates, strings, and numbers for the [step_from] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type step_from_input_format: str, optional
        :param step_from_output_format: Formats/parses dates, strings, and numbers for the [step_from] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type step_from_output_format: str, optional
        :param step_to_input_format: Formats/parses dates, strings, and numbers for the [step_to] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type step_to_input_format: str, optional
        :param step_to_output_format: Formats/parses dates, strings, and numbers for the [step_to] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type step_to_output_format: str, optional
        :param target_input_format: Formats/parses dates, strings, and numbers for the [target] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type target_input_format: str, optional
        :param target_output_format: Formats/parses dates, strings, and numbers for the [target] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type target_output_format: str, optional
        :param value_input_format: Formats/parses dates, strings, and numbers for the [value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type value_input_format: str, optional
        :param value_output_format: Formats/parses dates, strings, and numbers for the [value] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type value_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "filter": {},
                "facet": {},
                "metadata": {},
                "source": {},
                "step_from": {},
                "step_to": {},
                "target": {},
                "value": {},
            }
        }

        if source is not None:
            assert source in data_columns, f"[source] is not a column in the data."
            self.bindings["data"]["source"] = source

        if target is not None:
            assert target in data_columns, f"[target] is not a column in the data."
            self.bindings["data"]["target"] = target

        if value is not None:
            assert value in data_columns, f"[value] is not a column in the data."
            self.bindings["data"]["value"] = value

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if facet is not None:
            assert facet in data_columns, f"[facet] is not a column in the data."
            self.bindings["data"]["facet"] = facet

        if step_from is not None:
            assert (
                step_from in data_columns
            ), f"[step_from] is not a column in the data."
            self.bindings["data"]["step_from"] = step_from

        if step_to is not None:
            assert step_to in data_columns, f"[step_to] is not a column in the data."
            self.bindings["data"]["step_to"] = step_to

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []

        if source_output_format is not None:
            if source_input_format is None and source_output_format is not None:
                f"[source_input_format] and [source_output_format] must both be defined."
            elif source_input_format is not None and source_output_format is None:
                f"[source_input_format] and [source_output_format] must both be defined."
            if source_output_format.startswith("%"):
                self.metadata["data"]["source"]["type"] = "datetime"
                self.metadata["data"]["source"]["type_id"] = (
                    "datetime$" + source_input_format
                )
                self.metadata["data"]["source"]["output_format_id"] = (
                    "datetime$" + source_output_format
                )
            elif "_" in source_output_format:
                self.metadata["data"]["source"]["type"] = "number"
                self.metadata["data"]["source"]["type_id"] = (
                    "number$" + source_input_format
                )
                self.metadata["data"]["source"]["output_format_id"] = (
                    "number$" + source_output_format
                )
            elif (
                source_output_format is not None
                and not source_output_format.startswith("%")
                and "_" not in source_output_format
            ):
                self.metadata["data"]["source"]["type"] = "string"
                self.metadata["data"]["source"]["type_id"] = (
                    "string$" + source_input_format
                )
                self.metadata["data"]["source"]["output_format_id"] = (
                    "string$" + source_output_format
                )

        if target_output_format is not None:
            if target_input_format is None and target_output_format is not None:
                f"[target_input_format] and [target_output_format] must both be defined."
            elif target_input_format is not None and target_output_format is None:
                f"[target_input_format] and [target_output_format] must both be defined."
            if target_output_format.startswith("%"):
                self.metadata["data"]["target"]["type"] = "datetime"
                self.metadata["data"]["target"]["type_id"] = (
                    "datetime$" + target_input_format
                )
                self.metadata["data"]["target"]["output_format_id"] = (
                    "datetime$" + target_output_format
                )
            elif "_" in target_output_format:
                self.metadata["data"]["target"]["type"] = "number"
                self.metadata["data"]["target"]["type_id"] = (
                    "number$" + target_input_format
                )
                self.metadata["data"]["target"]["output_format_id"] = (
                    "number$" + target_output_format
                )
            elif (
                target_output_format is not None
                and not target_output_format.startswith("%")
                and "_" not in target_output_format
            ):
                self.metadata["data"]["target"]["type"] = "string"
                self.metadata["data"]["target"]["type_id"] = (
                    "string$" + target_input_format
                )
                self.metadata["data"]["target"]["output_format_id"] = (
                    "string$" + target_output_format
                )

        if value_output_format is not None:
            if value_input_format is None and value_output_format is not None:
                f"[value_input_format] and [value_output_format] must both be defined."
            elif value_input_format is not None and value_output_format is None:
                f"[value_input_format] and [value_output_format] must both be defined."
            if value_output_format.startswith("%"):
                self.metadata["data"]["value"]["type"] = "datetime"
                self.metadata["data"]["value"]["type_id"] = (
                    "datetime$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "datetime$" + value_output_format
                )
            elif "_" in value_output_format:
                self.metadata["data"]["value"]["type"] = "number"
                self.metadata["data"]["value"]["type_id"] = (
                    "number$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "number$" + value_output_format
                )
            elif (
                value_output_format is not None
                and not value_output_format.startswith("%")
                and "_" not in value_output_format
            ):
                self.metadata["data"]["value"]["type"] = "string"
                self.metadata["data"]["value"]["type_id"] = (
                    "string$" + value_input_format
                )
                self.metadata["data"]["value"]["output_format_id"] = (
                    "string$" + value_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if facet_output_format is not None:
            if facet_input_format is None and facet_output_format is not None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            elif facet_input_format is not None and facet_output_format is None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            if facet_output_format.startswith("%"):
                self.metadata["data"]["facet"]["type"] = "datetime"
                self.metadata["data"]["facet"]["type_id"] = (
                    "datetime$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "datetime$" + facet_output_format
                )
            elif "_" in facet_output_format:
                self.metadata["data"]["facet"]["type"] = "number"
                self.metadata["data"]["facet"]["type_id"] = (
                    "number$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "number$" + facet_output_format
                )
            elif (
                facet_output_format is not None
                and not facet_output_format.startswith("%")
                and "_" not in facet_output_format
            ):
                self.metadata["data"]["facet"]["type"] = "string"
                self.metadata["data"]["facet"]["type_id"] = (
                    "string$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "string$" + facet_output_format
                )

        if step_from_output_format is not None:
            if step_from_input_format is None and step_from_output_format is not None:
                f"[step_from_input_format] and [step_from_output_format] must both be defined."
            elif step_from_input_format is not None and step_from_output_format is None:
                f"[step_from_input_format] and [step_from_output_format] must both be defined."
            if step_from_output_format.startswith("%"):
                self.metadata["data"]["step_from"]["type"] = "datetime"
                self.metadata["data"]["step_from"]["type_id"] = (
                    "datetime$" + step_from_input_format
                )
                self.metadata["data"]["step_from"]["output_format_id"] = (
                    "datetime$" + step_from_output_format
                )
            elif "_" in step_from_output_format:
                self.metadata["data"]["step_from"]["type"] = "number"
                self.metadata["data"]["step_from"]["type_id"] = (
                    "number$" + step_from_input_format
                )
                self.metadata["data"]["step_from"]["output_format_id"] = (
                    "number$" + step_from_output_format
                )
            elif (
                step_from_output_format is not None
                and not step_from_output_format.startswith("%")
                and "_" not in step_from_output_format
            ):
                self.metadata["data"]["step_from"]["type"] = "string"
                self.metadata["data"]["step_from"]["type_id"] = (
                    "string$" + step_from_input_format
                )
                self.metadata["data"]["step_from"]["output_format_id"] = (
                    "string$" + step_from_output_format
                )

        if step_to_output_format is not None:
            if step_to_input_format is None and step_to_output_format is not None:
                f"[step_to_input_format] and [step_to_output_format] must both be defined."
            elif step_to_input_format is not None and step_to_output_format is None:
                f"[step_to_input_format] and [step_to_output_format] must both be defined."
            if step_to_output_format.startswith("%"):
                self.metadata["data"]["step_to"]["type"] = "datetime"
                self.metadata["data"]["step_to"]["type_id"] = (
                    "datetime$" + step_to_input_format
                )
                self.metadata["data"]["step_to"]["output_format_id"] = (
                    "datetime$" + step_to_output_format
                )
            elif "_" in step_to_output_format:
                self.metadata["data"]["step_to"]["type"] = "number"
                self.metadata["data"]["step_to"]["type_id"] = (
                    "number$" + step_to_input_format
                )
                self.metadata["data"]["step_to"]["output_format_id"] = (
                    "number$" + step_to_output_format
                )
            elif (
                step_to_output_format is not None
                and not step_to_output_format.startswith("%")
                and "_" not in step_to_output_format
            ):
                self.metadata["data"]["step_to"]["type"] = "string"
                self.metadata["data"]["step_to"]["type_id"] = (
                    "string$" + step_to_input_format
                )
                self.metadata["data"]["step_to"]["output_format_id"] = (
                    "string$" + step_to_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["data"]["metadata"]["type"] = "datetime"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["data"]["metadata"]["type"] = "number"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["data"]["metadata"]["type"] = "string"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_scatter_data(
        self,
        data: pd.DataFrame = None,
        x: str = None,
        y: str = None,
        name: Union[list, str] = None,
        color: str = None,
        size: str = None,
        shape: str = None,
        facet: str = None,
        slider: str = None,
        series: str = None,
        filter: str = None,
        metadata: Union[list, str] = None,
        color_input_format: str = None,
        color_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        facet_input_format: str = None,
        facet_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        name_input_format: str = None,
        name_output_format: str = None,
        series_input_format: str = None,
        series_output_format: str = None,
        shape_input_format: str = None,
        shape_output_format: str = None,
        size_input_format: str = None,
        size_output_format: str = None,
        slider_input_format: str = None,
        slider_output_format: str = None,
        x_input_format: str = None,
        x_output_format: str = None,
        y_input_format: str = None,
        y_output_format: str = None,
    ):
        """
        Bind data to chart: scatter.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param x: X values. Suggested data type hints: number, string, datetime. Flourish type hint: column
        :type x: str, optional

        :param y: Y values. Suggested data type hints: number, string, datetime. Flourish type hint: column
        :type y: str, optional

        :param name: Name. Select multiple columns if required to make a unique name. Suggested data type hints: string. Flourish type hint: columns
        :type name: Union[list, str], optional

        :param color: Color. Colors the dots based on numbers or categories. Suggested data type hints: string, number. Flourish type hint: column
        :type color: str, optional

        :param size: Size. Sizes the dots based on the numbers. Suggested data type hints: number, string. Flourish type hint: column
        :type size: str, optional

        :param shape: Shape. Sets the shape of the dots based on numbers or categories. Suggested data type hints: string. Flourish type hint: column
        :type shape: str, optional

        :param facet: Grid of charts (facet). Creates a mini chart for each value in the selected column. Suggested data type hints: string. Flourish type hint: column
        :type facet: str, optional

        :param slider: Time. Creates a time slider and connects/animates dots with the same name. Suggested data type hints: datetime, string, number. Flourish type hint: column
        :type slider: str, optional

        :param series: Series (connect with line). Group dots into series based on the contents of a column. Suggested data type hints: string. Flourish type hint: column
        :type series: str, optional

        :param filter: Filter control. Creates a control based on the contents of any column. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type filter: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panelsSuggested data type hints: string, number, datetime. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param color_input_format: Formats/parses dates, strings, and numbers for the [color] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_input_format: str, optional
        :param color_output_format: Formats/parses dates, strings, and numbers for the [color] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param facet_input_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_input_format: str, optional
        :param facet_output_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param name_input_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_input_format: str, optional
        :param name_output_format: Formats/parses dates, strings, and numbers for the [name] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type name_output_format: str, optional
        :param series_input_format: Formats/parses dates, strings, and numbers for the [series] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type series_input_format: str, optional
        :param series_output_format: Formats/parses dates, strings, and numbers for the [series] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type series_output_format: str, optional
        :param shape_input_format: Formats/parses dates, strings, and numbers for the [shape] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type shape_input_format: str, optional
        :param shape_output_format: Formats/parses dates, strings, and numbers for the [shape] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type shape_output_format: str, optional
        :param size_input_format: Formats/parses dates, strings, and numbers for the [size] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type size_input_format: str, optional
        :param size_output_format: Formats/parses dates, strings, and numbers for the [size] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type size_output_format: str, optional
        :param slider_input_format: Formats/parses dates, strings, and numbers for the [slider] column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type slider_input_format: str, optional
        :param slider_output_format: Formats/parses dates, strings, and numbers for the [slider] column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type slider_output_format: str, optional
        :param x_input_format: Formats/parses dates, strings, and numbers for the [x] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type x_input_format: str, optional
        :param x_output_format: Formats/parses dates, strings, and numbers for the [x] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type x_output_format: str, optional
        :param y_input_format: Formats/parses dates, strings, and numbers for the [y] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type y_input_format: str, optional
        :param y_output_format: Formats/parses dates, strings, and numbers for the [y] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type y_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "color": {},
                "filter": {},
                "facet": {},
                "metadata": {},
                "name": {},
                "series": {},
                "shape": {},
                "size": {},
                "slider": {},
                "x": {},
                "y": {},
            }
        }

        if x is not None:
            assert x in data_columns, f"[x] is not a column in the data."
            self.bindings["data"]["x"] = x

        if y is not None:
            assert y in data_columns, f"[y] is not a column in the data."
            self.bindings["data"]["y"] = y

        if name is not None:
            if isinstance(name, list):
                for col in name:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["name"] = name
            elif isinstance(name, str):
                assert name in data_columns, f"[name] is not a column in the data."
                self.bindings["data"]["name"] = [name]
        else:
            self.bindings["data"]["name"] = []

        if color is not None:
            assert color in data_columns, f"[color] is not a column in the data."
            self.bindings["data"]["color"] = color

        if size is not None:
            assert size in data_columns, f"[size] is not a column in the data."
            self.bindings["data"]["size"] = size

        if shape is not None:
            assert shape in data_columns, f"[shape] is not a column in the data."
            self.bindings["data"]["shape"] = shape

        if facet is not None:
            assert facet in data_columns, f"[facet] is not a column in the data."
            self.bindings["data"]["facet"] = facet

        if slider is not None:
            assert slider in data_columns, f"[slider] is not a column in the data."
            self.bindings["data"]["slider"] = slider

        if series is not None:
            assert series in data_columns, f"[series] is not a column in the data."
            self.bindings["data"]["series"] = series

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []

        if x_output_format is not None:
            if x_input_format is None and x_output_format is not None:
                f"[x_input_format] and [x_output_format] must both be defined."
            elif x_input_format is not None and x_output_format is None:
                f"[x_input_format] and [x_output_format] must both be defined."
            if x_output_format.startswith("%"):
                self.metadata["data"]["x"]["type"] = "datetime"
                self.metadata["data"]["x"]["type_id"] = "datetime$" + x_input_format
                self.metadata["data"]["x"]["output_format_id"] = (
                    "datetime$" + x_output_format
                )
            elif "_" in x_output_format:
                self.metadata["data"]["x"]["type"] = "number"
                self.metadata["data"]["x"]["type_id"] = "number$" + x_input_format
                self.metadata["data"]["x"]["output_format_id"] = (
                    "number$" + x_output_format
                )
            elif (
                x_output_format is not None
                and not x_output_format.startswith("%")
                and "_" not in x_output_format
            ):
                self.metadata["data"]["x"]["type"] = "string"
                self.metadata["data"]["x"]["type_id"] = "string$" + x_input_format
                self.metadata["data"]["x"]["output_format_id"] = (
                    "string$" + x_output_format
                )

        if y_output_format is not None:
            if y_input_format is None and y_output_format is not None:
                f"[y_input_format] and [y_output_format] must both be defined."
            elif y_input_format is not None and y_output_format is None:
                f"[y_input_format] and [y_output_format] must both be defined."
            if y_output_format.startswith("%"):
                self.metadata["data"]["y"]["type"] = "datetime"
                self.metadata["data"]["y"]["type_id"] = "datetime$" + y_input_format
                self.metadata["data"]["y"]["output_format_id"] = (
                    "datetime$" + y_output_format
                )
            elif "_" in y_output_format:
                self.metadata["data"]["y"]["type"] = "number"
                self.metadata["data"]["y"]["type_id"] = "number$" + y_input_format
                self.metadata["data"]["y"]["output_format_id"] = (
                    "number$" + y_output_format
                )
            elif (
                y_output_format is not None
                and not y_output_format.startswith("%")
                and "_" not in y_output_format
            ):
                self.metadata["data"]["y"]["type"] = "string"
                self.metadata["data"]["y"]["type_id"] = "string$" + y_input_format
                self.metadata["data"]["y"]["output_format_id"] = (
                    "string$" + y_output_format
                )

        if name_output_format is not None:
            if name_input_format is None and name_output_format is not None:
                f"[name_input_format] and [name_output_format] must both be defined."
            elif name_input_format is not None and name_output_format is None:
                f"[name_input_format] and [name_output_format] must both be defined."
            if name_output_format.startswith("%"):
                self.metadata["data"]["name"]["type"] = "datetime"
                self.metadata["data"]["name"]["type_id"] = (
                    "datetime$" + name_input_format
                )
                self.metadata["data"]["name"]["output_format_id"] = (
                    "datetime$" + name_output_format
                )
            elif "_" in name_output_format:
                self.metadata["data"]["name"]["type"] = "number"
                self.metadata["data"]["name"]["type_id"] = "number$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "number$" + name_output_format
                )
            elif (
                name_output_format is not None
                and not name_output_format.startswith("%")
                and "_" not in name_output_format
            ):
                self.metadata["data"]["name"]["type"] = "string"
                self.metadata["data"]["name"]["type_id"] = "string$" + name_input_format
                self.metadata["data"]["name"]["output_format_id"] = (
                    "string$" + name_output_format
                )

        if color_output_format is not None:
            if color_input_format is None and color_output_format is not None:
                f"[color_input_format] and [color_output_format] must both be defined."
            elif color_input_format is not None and color_output_format is None:
                f"[color_input_format] and [color_output_format] must both be defined."
            if color_output_format.startswith("%"):
                self.metadata["data"]["color"]["type"] = "datetime"
                self.metadata["data"]["color"]["type_id"] = (
                    "datetime$" + color_input_format
                )
                self.metadata["data"]["color"]["output_format_id"] = (
                    "datetime$" + color_output_format
                )
            elif "_" in color_output_format:
                self.metadata["data"]["color"]["type"] = "number"
                self.metadata["data"]["color"]["type_id"] = (
                    "number$" + color_input_format
                )
                self.metadata["data"]["color"]["output_format_id"] = (
                    "number$" + color_output_format
                )
            elif (
                color_output_format is not None
                and not color_output_format.startswith("%")
                and "_" not in color_output_format
            ):
                self.metadata["data"]["color"]["type"] = "string"
                self.metadata["data"]["color"]["type_id"] = (
                    "string$" + color_input_format
                )
                self.metadata["data"]["color"]["output_format_id"] = (
                    "string$" + color_output_format
                )

        if size_output_format is not None:
            if size_input_format is None and size_output_format is not None:
                f"[size_input_format] and [size_output_format] must both be defined."
            elif size_input_format is not None and size_output_format is None:
                f"[size_input_format] and [size_output_format] must both be defined."
            if size_output_format.startswith("%"):
                self.metadata["data"]["size"]["type"] = "datetime"
                self.metadata["data"]["size"]["type_id"] = (
                    "datetime$" + size_input_format
                )
                self.metadata["data"]["size"]["output_format_id"] = (
                    "datetime$" + size_output_format
                )
            elif "_" in size_output_format:
                self.metadata["data"]["size"]["type"] = "number"
                self.metadata["data"]["size"]["type_id"] = "number$" + size_input_format
                self.metadata["data"]["size"]["output_format_id"] = (
                    "number$" + size_output_format
                )
            elif (
                size_output_format is not None
                and not size_output_format.startswith("%")
                and "_" not in size_output_format
            ):
                self.metadata["data"]["size"]["type"] = "string"
                self.metadata["data"]["size"]["type_id"] = "string$" + size_input_format
                self.metadata["data"]["size"]["output_format_id"] = (
                    "string$" + size_output_format
                )

        if shape_output_format is not None:
            if shape_input_format is None and shape_output_format is not None:
                f"[shape_input_format] and [shape_output_format] must both be defined."
            elif shape_input_format is not None and shape_output_format is None:
                f"[shape_input_format] and [shape_output_format] must both be defined."
            if shape_output_format.startswith("%"):
                self.metadata["data"]["shape"]["type"] = "datetime"
                self.metadata["data"]["shape"]["type_id"] = (
                    "datetime$" + shape_input_format
                )
                self.metadata["data"]["shape"]["output_format_id"] = (
                    "datetime$" + shape_output_format
                )
            elif "_" in shape_output_format:
                self.metadata["data"]["shape"]["type"] = "number"
                self.metadata["data"]["shape"]["type_id"] = (
                    "number$" + shape_input_format
                )
                self.metadata["data"]["shape"]["output_format_id"] = (
                    "number$" + shape_output_format
                )
            elif (
                shape_output_format is not None
                and not shape_output_format.startswith("%")
                and "_" not in shape_output_format
            ):
                self.metadata["data"]["shape"]["type"] = "string"
                self.metadata["data"]["shape"]["type_id"] = (
                    "string$" + shape_input_format
                )
                self.metadata["data"]["shape"]["output_format_id"] = (
                    "string$" + shape_output_format
                )

        if facet_output_format is not None:
            if facet_input_format is None and facet_output_format is not None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            elif facet_input_format is not None and facet_output_format is None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            if facet_output_format.startswith("%"):
                self.metadata["data"]["facet"]["type"] = "datetime"
                self.metadata["data"]["facet"]["type_id"] = (
                    "datetime$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "datetime$" + facet_output_format
                )
            elif "_" in facet_output_format:
                self.metadata["data"]["facet"]["type"] = "number"
                self.metadata["data"]["facet"]["type_id"] = (
                    "number$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "number$" + facet_output_format
                )
            elif (
                facet_output_format is not None
                and not facet_output_format.startswith("%")
                and "_" not in facet_output_format
            ):
                self.metadata["data"]["facet"]["type"] = "string"
                self.metadata["data"]["facet"]["type_id"] = (
                    "string$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "string$" + facet_output_format
                )

        if slider_output_format is not None:
            if slider_input_format is None and slider_output_format is not None:
                f"[slider_input_format] and [slider_output_format] must both be defined."
            elif slider_input_format is not None and slider_output_format is None:
                f"[slider_input_format] and [slider_output_format] must both be defined."
            if slider_output_format.startswith("%"):
                self.metadata["data"]["slider"]["type"] = "datetime"
                self.metadata["data"]["slider"]["type_id"] = (
                    "datetime$" + slider_input_format
                )
                self.metadata["data"]["slider"]["output_format_id"] = (
                    "datetime$" + slider_output_format
                )
            elif "_" in slider_output_format:
                self.metadata["data"]["slider"]["type"] = "number"
                self.metadata["data"]["slider"]["type_id"] = (
                    "number$" + slider_input_format
                )
                self.metadata["data"]["slider"]["output_format_id"] = (
                    "number$" + slider_output_format
                )
            elif (
                slider_output_format is not None
                and not slider_output_format.startswith("%")
                and "_" not in slider_output_format
            ):
                self.metadata["data"]["slider"]["type"] = "string"
                self.metadata["data"]["slider"]["type_id"] = (
                    "string$" + slider_input_format
                )
                self.metadata["data"]["slider"]["output_format_id"] = (
                    "string$" + slider_output_format
                )

        if series_output_format is not None:
            if series_input_format is None and series_output_format is not None:
                f"[series_input_format] and [series_output_format] must both be defined."
            elif series_input_format is not None and series_output_format is None:
                f"[series_input_format] and [series_output_format] must both be defined."
            if series_output_format.startswith("%"):
                self.metadata["data"]["series"]["type"] = "datetime"
                self.metadata["data"]["series"]["type_id"] = (
                    "datetime$" + series_input_format
                )
                self.metadata["data"]["series"]["output_format_id"] = (
                    "datetime$" + series_output_format
                )
            elif "_" in series_output_format:
                self.metadata["data"]["series"]["type"] = "number"
                self.metadata["data"]["series"]["type_id"] = (
                    "number$" + series_input_format
                )
                self.metadata["data"]["series"]["output_format_id"] = (
                    "number$" + series_output_format
                )
            elif (
                series_output_format is not None
                and not series_output_format.startswith("%")
                and "_" not in series_output_format
            ):
                self.metadata["data"]["series"]["type"] = "string"
                self.metadata["data"]["series"]["type_id"] = (
                    "string$" + series_input_format
                )
                self.metadata["data"]["series"]["output_format_id"] = (
                    "string$" + series_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["data"]["metadata"]["type"] = "datetime"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["data"]["metadata"]["type"] = "number"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["data"]["metadata"]["type"] = "string"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_slope_chart_data(
        self,
        data: pd.DataFrame = None,
        id: str = None,
        values: Union[list, str] = None,
        line_thickness: str = None,
        filter: str = None,
        color_category: str = None,
        facet: str = None,
        metadata: Union[list, str] = None,
        color_category_input_format: str = None,
        color_category_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        facet_input_format: str = None,
        facet_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        line_thickness_input_format: str = None,
        line_thickness_output_format: str = None,
        id_input_format: str = None,
        id_output_format: str = None,
        values_input_format: str = None,
        values_output_format: str = None,
    ):
        """
        Bind data to chart: slope chart.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param id: Name. The name of the data series (eg. voting district, data mode). Flourish type hint: column
        :type id: str, optional

        :param values: Values. Values for that data series (eg. % of votes). Flourish type hint: columns
        :type values: Union[list, str], optional

        :param line_thickness: Line thickness. Values for the thickness of line. Flourish type hint: column
        :type line_thickness: str, optional

        :param filter: Filter. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type filter: str, optional

        :param color_category: Color category
        :type color_category: str, optional

        :param facet: Facet
        :type facet: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom popups and panels Suggested data type hints: string, number, datetime. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param color_category_input_format: Formats/parses dates, strings, and numbers for the [color_category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_category_input_format: str, optional
        :param color_category_output_format: Formats/parses dates, strings, and numbers for the [color_category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_category_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param facet_input_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_input_format: str, optional
        :param facet_output_format: Formats/parses dates, strings, and numbers for the [facet] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type facet_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param line_thickness_input_format: Formats/parses dates, strings, and numbers for the [line_thickness] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type line_thickness_input_format: str, optional
        :param line_thickness_output_format: Formats/parses dates, strings, and numbers for the [line_thickness] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type line_thickness_output_format: str, optional
        :param id_input_format: Formats/parses dates, strings, and numbers for the [id] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type id_input_format: str, optional
        :param id_output_format: Formats/parses dates, strings, and numbers for the [id] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type id_output_format: str, optional
        :param values_input_format: Formats/parses dates, strings, and numbers for the [values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type values_input_format: str, optional
        :param values_output_format: Formats/parses dates, strings, and numbers for the [values] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type values_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "color_category": {},
                "filter": {},
                "facet": {},
                "metadata": {},
                "line_thickness": {},
                "id": {},
                "values": {},
            }
        }

        if id is not None:
            assert id in data_columns, f"[id] is not a column in the data."
            self.bindings["data"]["id"] = id

        if values is not None:
            if isinstance(values, list):
                for col in values:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["values"] = values
            elif isinstance(values, str):
                assert values in data_columns, f"[values] is not a column in the data."
                self.bindings["data"]["values"] = [values]
        else:
            self.bindings["data"]["values"] = []

        if line_thickness is not None:
            assert (
                line_thickness in data_columns
            ), f"[line_thickness] is not a column in the data."
            self.bindings["data"]["line_thickness"] = line_thickness

        if filter is not None:
            assert filter in data_columns, f"[filter] is not a column in the data."
            self.bindings["data"]["filter"] = filter

        if color_category is not None:
            assert (
                color_category in data_columns
            ), f"[color_category] is not a column in the data."
            self.bindings["data"]["color_category"] = color_category

        if facet is not None:
            assert facet in data_columns, f"[facet] is not a column in the data."
            self.bindings["data"]["facet"] = facet

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []

        if id_output_format is not None:
            if id_input_format is None and id_output_format is not None:
                f"[id_input_format] and [id_output_format] must both be defined."
            elif id_input_format is not None and id_output_format is None:
                f"[id_input_format] and [id_output_format] must both be defined."
            if id_output_format.startswith("%"):
                self.metadata["data"]["id"]["type"] = "datetime"
                self.metadata["data"]["id"]["type_id"] = "datetime$" + id_input_format
                self.metadata["data"]["id"]["output_format_id"] = (
                    "datetime$" + id_output_format
                )
            elif "_" in id_output_format:
                self.metadata["data"]["id"]["type"] = "number"
                self.metadata["data"]["id"]["type_id"] = "number$" + id_input_format
                self.metadata["data"]["id"]["output_format_id"] = (
                    "number$" + id_output_format
                )
            elif (
                id_output_format is not None
                and not id_output_format.startswith("%")
                and "_" not in id_output_format
            ):
                self.metadata["data"]["id"]["type"] = "string"
                self.metadata["data"]["id"]["type_id"] = "string$" + id_input_format
                self.metadata["data"]["id"]["output_format_id"] = (
                    "string$" + id_output_format
                )

        if values_output_format is not None:
            if values_input_format is None and values_output_format is not None:
                f"[values_input_format] and [values_output_format] must both be defined."
            elif values_input_format is not None and values_output_format is None:
                f"[values_input_format] and [values_output_format] must both be defined."
            if values_output_format.startswith("%"):
                self.metadata["data"]["values"]["type"] = "datetime"
                self.metadata["data"]["values"]["type_id"] = (
                    "datetime$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "datetime$" + values_output_format
                )
            elif "_" in values_output_format:
                self.metadata["data"]["values"]["type"] = "number"
                self.metadata["data"]["values"]["type_id"] = (
                    "number$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "number$" + values_output_format
                )
            elif (
                values_output_format is not None
                and not values_output_format.startswith("%")
                and "_" not in values_output_format
            ):
                self.metadata["data"]["values"]["type"] = "string"
                self.metadata["data"]["values"]["type_id"] = (
                    "string$" + values_input_format
                )
                self.metadata["data"]["values"]["output_format_id"] = (
                    "string$" + values_output_format
                )

        if line_thickness_output_format is not None:
            if (
                line_thickness_input_format is None
                and line_thickness_output_format is not None
            ):
                f"[line_thickness_input_format] and [line_thickness_output_format] must both be defined."
            elif (
                line_thickness_input_format is not None
                and line_thickness_output_format is None
            ):
                f"[line_thickness_input_format] and [line_thickness_output_format] must both be defined."
            if line_thickness_output_format.startswith("%"):
                self.metadata["data"]["line_thickness"]["type"] = "datetime"
                self.metadata["data"]["line_thickness"]["type_id"] = (
                    "datetime$" + line_thickness_input_format
                )
                self.metadata["data"]["line_thickness"]["output_format_id"] = (
                    "datetime$" + line_thickness_output_format
                )
            elif "_" in line_thickness_output_format:
                self.metadata["data"]["line_thickness"]["type"] = "number"
                self.metadata["data"]["line_thickness"]["type_id"] = (
                    "number$" + line_thickness_input_format
                )
                self.metadata["data"]["line_thickness"]["output_format_id"] = (
                    "number$" + line_thickness_output_format
                )
            elif (
                line_thickness_output_format is not None
                and not line_thickness_output_format.startswith("%")
                and "_" not in line_thickness_output_format
            ):
                self.metadata["data"]["line_thickness"]["type"] = "string"
                self.metadata["data"]["line_thickness"]["type_id"] = (
                    "string$" + line_thickness_input_format
                )
                self.metadata["data"]["line_thickness"]["output_format_id"] = (
                    "string$" + line_thickness_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["data"]["filter"]["type"] = "datetime"
                self.metadata["data"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["data"]["filter"]["type"] = "number"
                self.metadata["data"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["data"]["filter"]["type"] = "string"
                self.metadata["data"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["data"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if color_category_output_format is not None:
            if (
                color_category_input_format is None
                and color_category_output_format is not None
            ):
                f"[color_category_input_format] and [color_category_output_format] must both be defined."
            elif (
                color_category_input_format is not None
                and color_category_output_format is None
            ):
                f"[color_category_input_format] and [color_category_output_format] must both be defined."
            if color_category_output_format.startswith("%"):
                self.metadata["data"]["color_category"]["type"] = "datetime"
                self.metadata["data"]["color_category"]["type_id"] = (
                    "datetime$" + color_category_input_format
                )
                self.metadata["data"]["color_category"]["output_format_id"] = (
                    "datetime$" + color_category_output_format
                )
            elif "_" in color_category_output_format:
                self.metadata["data"]["color_category"]["type"] = "number"
                self.metadata["data"]["color_category"]["type_id"] = (
                    "number$" + color_category_input_format
                )
                self.metadata["data"]["color_category"]["output_format_id"] = (
                    "number$" + color_category_output_format
                )
            elif (
                color_category_output_format is not None
                and not color_category_output_format.startswith("%")
                and "_" not in color_category_output_format
            ):
                self.metadata["data"]["color_category"]["type"] = "string"
                self.metadata["data"]["color_category"]["type_id"] = (
                    "string$" + color_category_input_format
                )
                self.metadata["data"]["color_category"]["output_format_id"] = (
                    "string$" + color_category_output_format
                )

        if facet_output_format is not None:
            if facet_input_format is None and facet_output_format is not None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            elif facet_input_format is not None and facet_output_format is None:
                f"[facet_input_format] and [facet_output_format] must both be defined."
            if facet_output_format.startswith("%"):
                self.metadata["data"]["facet"]["type"] = "datetime"
                self.metadata["data"]["facet"]["type_id"] = (
                    "datetime$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "datetime$" + facet_output_format
                )
            elif "_" in facet_output_format:
                self.metadata["data"]["facet"]["type"] = "number"
                self.metadata["data"]["facet"]["type_id"] = (
                    "number$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "number$" + facet_output_format
                )
            elif (
                facet_output_format is not None
                and not facet_output_format.startswith("%")
                and "_" not in facet_output_format
            ):
                self.metadata["data"]["facet"]["type"] = "string"
                self.metadata["data"]["facet"]["type_id"] = (
                    "string$" + facet_input_format
                )
                self.metadata["data"]["facet"]["output_format_id"] = (
                    "string$" + facet_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["data"]["metadata"]["type"] = "datetime"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["data"]["metadata"]["type"] = "number"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["data"]["metadata"]["type"] = "string"
                self.metadata["data"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["data"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_sports_data(
        self,
        positions_data: pd.DataFrame = None,
        info: Union[list, str] = None,
        color: str = None,
        size: str = None,
        squad_number: str = None,
        position_x: str = None,
        position_y: str = None,
        filter: str = None,
        photo: str = None,
        metadata: Union[list, str] = None,
        color_input_format: str = None,
        color_output_format: str = None,
        filter_input_format: str = None,
        filter_output_format: str = None,
        photo_input_format: str = None,
        photo_output_format: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        info_input_format: str = None,
        info_output_format: str = None,
        size_input_format: str = None,
        size_output_format: str = None,
        squad_number_input_format: str = None,
        squad_number_output_format: str = None,
        position_x_input_format: str = None,
        position_x_output_format: str = None,
        position_y_input_format: str = None,
        position_y_output_format: str = None,
    ):
        """
        Bind data to chart: sports.

        :param positions_data: Positions data. defaults to None
        :type positions_data: pd.DataFrame, optional

        :param info: Name. A name to include on a label and/or popup. Suggested data type hints: string, number. Flourish type hint: columns
        :type info: Union[list, str], optional

        :param color: Color by. An optional category column to color the dots by. For example if you have two different teams. Suggested data type hints: string. Flourish type hint: column
        :type color: str, optional

        :param size: Size by. An optional numeric column to size the dots. Suggested data type hints: number. Flourish type hint: column
        :type size: str, optional

        :param squad_number: Squad numbers. An optional squad number to appear within the dot. Suggested data type hints: number, string. Flourish type hint: column
        :type squad_number: str, optional

        :param position_x: X position. Use this to column to set the X position of a dot on the pitch when creating shot charts. This column is ignored when the setting Position points by is set to FormationSuggested data type hints: number. Flourish type hint: column
        :type position_x: str, optional

        :param position_y: Y position. Use this to column to set the Y position of a dot on the pitch when creating shot charts. This column is ignored when the setting Position points by is set to FormationSuggested data type hints: number. Flourish type hint: column
        :type position_y: str, optional

        :param filter: Filter by. Setting a column here will add a control to the visualization to filter the dots. For example you could filter by team. Suggested data type hints: string, number. Flourish type hint: column
        :type filter: str, optional

        :param photo: Image. Add an image to appear in the circles. To add an image, right click on a cell and click upload file Its also possible to add a image URL. Suggested data type hints: string. Flourish type hint: column
        :type photo: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Suggested data type hints: string, number, datetime. Flourish type hint: columns
        :type metadata: Union[list, str], optional
        :param color_input_format: Formats/parses dates, strings, and numbers for the [color] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_input_format: str, optional
        :param color_output_format: Formats/parses dates, strings, and numbers for the [color] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type color_output_format: str, optional
        :param filter_input_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_input_format: str, optional
        :param filter_output_format: Formats/parses dates, strings, and numbers for the [filter] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type filter_output_format: str, optional
        :param photo_input_format: Formats/parses dates, strings, and numbers for the [photo] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type photo_input_format: str, optional
        :param photo_output_format: Formats/parses dates, strings, and numbers for the [photo] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type photo_output_format: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param info_input_format: Formats/parses dates, strings, and numbers for the [info] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type info_input_format: str, optional
        :param info_output_format: Formats/parses dates, strings, and numbers for the [info] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type info_output_format: str, optional
        :param size_input_format: Formats/parses dates, strings, and numbers for the [size] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type size_input_format: str, optional
        :param size_output_format: Formats/parses dates, strings, and numbers for the [size] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type size_output_format: str, optional
        :param squad_number_input_format: Formats/parses dates, strings, and numbers for the [squad_number] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type squad_number_input_format: str, optional
        :param squad_number_output_format: Formats/parses dates, strings, and numbers for the [squad_number] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type squad_number_output_format: str, optional
        :param position_x_input_format: Formats/parses dates, strings, and numbers for the [position_x] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type position_x_input_format: str, optional
        :param position_x_output_format: Formats/parses dates, strings, and numbers for the [position_x] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type position_x_output_format: str, optional
        :param position_y_input_format: Formats/parses dates, strings, and numbers for the [position_y] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type position_y_input_format: str, optional
        :param position_y_output_format: Formats/parses dates, strings, and numbers for the [position_y] column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type position_y_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["positions"] = {}
        self.data_properties["positions"] = {}
        if positions_data is not None:
            positions_columns = set(positions_data.columns)
            int_columns_positions_data = positions_data.select_dtypes(
                include="int"
            ).columns
            positions_data[int_columns_positions_data] = positions_data[
                int_columns_positions_data
            ].astype(str)
            self.data_properties["positions"] = positions_data.to_dict(orient="records")
        self.metadata = {
            "positions": {
                "color": {},
                "filter": {},
                "photo": {},
                "metadata": {},
                "info": {},
                "size": {},
                "squad_number": {},
                "position_x": {},
                "position_y": {},
            }
        }

        if info is not None:
            if isinstance(info, list):
                for col in info:
                    assert (
                        col in positions_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["positions"]["info"] = info
            elif isinstance(info, str):
                assert info in positions_columns, f"[info] is not a column in the data."
                self.bindings["positions"]["info"] = [info]
        else:
            self.bindings["positions"]["info"] = []

        if color is not None:
            assert color in positions_columns, f"[color] is not a column in the data."
            self.bindings["positions"]["color"] = color

        if size is not None:
            assert size in positions_columns, f"[size] is not a column in the data."
            self.bindings["positions"]["size"] = size

        if squad_number is not None:
            assert (
                squad_number in positions_columns
            ), f"[squad_number] is not a column in the data."
            self.bindings["positions"]["squad_number"] = squad_number

        if position_x is not None:
            assert (
                position_x in positions_columns
            ), f"[position_x] is not a column in the data."
            self.bindings["positions"]["position_x"] = position_x

        if position_y is not None:
            assert (
                position_y in positions_columns
            ), f"[position_y] is not a column in the data."
            self.bindings["positions"]["position_y"] = position_y

        if filter is not None:
            assert filter in positions_columns, f"[filter] is not a column in the data."
            self.bindings["positions"]["filter"] = filter

        if photo is not None:
            assert photo in positions_columns, f"[photo] is not a column in the data."
            self.bindings["positions"]["photo"] = photo

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in positions_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["positions"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in positions_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["positions"]["metadata"] = [metadata]
        else:
            self.bindings["positions"]["metadata"] = []

        if info_output_format is not None:
            if info_input_format is None and info_output_format is not None:
                f"[info_input_format] and [info_output_format] must both be defined."
            elif info_input_format is not None and info_output_format is None:
                f"[info_input_format] and [info_output_format] must both be defined."
            if info_output_format.startswith("%"):
                self.metadata["positions"]["info"]["type"] = "datetime"
                self.metadata["positions"]["info"]["type_id"] = (
                    "datetime$" + info_input_format
                )
                self.metadata["positions"]["info"]["output_format_id"] = (
                    "datetime$" + info_output_format
                )
            elif "_" in info_output_format:
                self.metadata["positions"]["info"]["type"] = "number"
                self.metadata["positions"]["info"]["type_id"] = (
                    "number$" + info_input_format
                )
                self.metadata["positions"]["info"]["output_format_id"] = (
                    "number$" + info_output_format
                )
            elif (
                info_output_format is not None
                and not info_output_format.startswith("%")
                and "_" not in info_output_format
            ):
                self.metadata["positions"]["info"]["type"] = "string"
                self.metadata["positions"]["info"]["type_id"] = (
                    "string$" + info_input_format
                )
                self.metadata["positions"]["info"]["output_format_id"] = (
                    "string$" + info_output_format
                )

        if color_output_format is not None:
            if color_input_format is None and color_output_format is not None:
                f"[color_input_format] and [color_output_format] must both be defined."
            elif color_input_format is not None and color_output_format is None:
                f"[color_input_format] and [color_output_format] must both be defined."
            if color_output_format.startswith("%"):
                self.metadata["positions"]["color"]["type"] = "datetime"
                self.metadata["positions"]["color"]["type_id"] = (
                    "datetime$" + color_input_format
                )
                self.metadata["positions"]["color"]["output_format_id"] = (
                    "datetime$" + color_output_format
                )
            elif "_" in color_output_format:
                self.metadata["positions"]["color"]["type"] = "number"
                self.metadata["positions"]["color"]["type_id"] = (
                    "number$" + color_input_format
                )
                self.metadata["positions"]["color"]["output_format_id"] = (
                    "number$" + color_output_format
                )
            elif (
                color_output_format is not None
                and not color_output_format.startswith("%")
                and "_" not in color_output_format
            ):
                self.metadata["positions"]["color"]["type"] = "string"
                self.metadata["positions"]["color"]["type_id"] = (
                    "string$" + color_input_format
                )
                self.metadata["positions"]["color"]["output_format_id"] = (
                    "string$" + color_output_format
                )

        if size_output_format is not None:
            if size_input_format is None and size_output_format is not None:
                f"[size_input_format] and [size_output_format] must both be defined."
            elif size_input_format is not None and size_output_format is None:
                f"[size_input_format] and [size_output_format] must both be defined."
            if size_output_format.startswith("%"):
                self.metadata["positions"]["size"]["type"] = "datetime"
                self.metadata["positions"]["size"]["type_id"] = (
                    "datetime$" + size_input_format
                )
                self.metadata["positions"]["size"]["output_format_id"] = (
                    "datetime$" + size_output_format
                )
            elif "_" in size_output_format:
                self.metadata["positions"]["size"]["type"] = "number"
                self.metadata["positions"]["size"]["type_id"] = (
                    "number$" + size_input_format
                )
                self.metadata["positions"]["size"]["output_format_id"] = (
                    "number$" + size_output_format
                )
            elif (
                size_output_format is not None
                and not size_output_format.startswith("%")
                and "_" not in size_output_format
            ):
                self.metadata["positions"]["size"]["type"] = "string"
                self.metadata["positions"]["size"]["type_id"] = (
                    "string$" + size_input_format
                )
                self.metadata["positions"]["size"]["output_format_id"] = (
                    "string$" + size_output_format
                )

        if squad_number_output_format is not None:
            if (
                squad_number_input_format is None
                and squad_number_output_format is not None
            ):
                f"[squad_number_input_format] and [squad_number_output_format] must both be defined."
            elif (
                squad_number_input_format is not None
                and squad_number_output_format is None
            ):
                f"[squad_number_input_format] and [squad_number_output_format] must both be defined."
            if squad_number_output_format.startswith("%"):
                self.metadata["positions"]["squad_number"]["type"] = "datetime"
                self.metadata["positions"]["squad_number"]["type_id"] = (
                    "datetime$" + squad_number_input_format
                )
                self.metadata["positions"]["squad_number"]["output_format_id"] = (
                    "datetime$" + squad_number_output_format
                )
            elif "_" in squad_number_output_format:
                self.metadata["positions"]["squad_number"]["type"] = "number"
                self.metadata["positions"]["squad_number"]["type_id"] = (
                    "number$" + squad_number_input_format
                )
                self.metadata["positions"]["squad_number"]["output_format_id"] = (
                    "number$" + squad_number_output_format
                )
            elif (
                squad_number_output_format is not None
                and not squad_number_output_format.startswith("%")
                and "_" not in squad_number_output_format
            ):
                self.metadata["positions"]["squad_number"]["type"] = "string"
                self.metadata["positions"]["squad_number"]["type_id"] = (
                    "string$" + squad_number_input_format
                )
                self.metadata["positions"]["squad_number"]["output_format_id"] = (
                    "string$" + squad_number_output_format
                )

        if position_x_output_format is not None:
            if position_x_input_format is None and position_x_output_format is not None:
                f"[position_x_input_format] and [position_x_output_format] must both be defined."
            elif (
                position_x_input_format is not None and position_x_output_format is None
            ):
                f"[position_x_input_format] and [position_x_output_format] must both be defined."
            if position_x_output_format.startswith("%"):
                self.metadata["positions"]["position_x"]["type"] = "datetime"
                self.metadata["positions"]["position_x"]["type_id"] = (
                    "datetime$" + position_x_input_format
                )
                self.metadata["positions"]["position_x"]["output_format_id"] = (
                    "datetime$" + position_x_output_format
                )
            elif "_" in position_x_output_format:
                self.metadata["positions"]["position_x"]["type"] = "number"
                self.metadata["positions"]["position_x"]["type_id"] = (
                    "number$" + position_x_input_format
                )
                self.metadata["positions"]["position_x"]["output_format_id"] = (
                    "number$" + position_x_output_format
                )
            elif (
                position_x_output_format is not None
                and not position_x_output_format.startswith("%")
                and "_" not in position_x_output_format
            ):
                self.metadata["positions"]["position_x"]["type"] = "string"
                self.metadata["positions"]["position_x"]["type_id"] = (
                    "string$" + position_x_input_format
                )
                self.metadata["positions"]["position_x"]["output_format_id"] = (
                    "string$" + position_x_output_format
                )

        if position_y_output_format is not None:
            if position_y_input_format is None and position_y_output_format is not None:
                f"[position_y_input_format] and [position_y_output_format] must both be defined."
            elif (
                position_y_input_format is not None and position_y_output_format is None
            ):
                f"[position_y_input_format] and [position_y_output_format] must both be defined."
            if position_y_output_format.startswith("%"):
                self.metadata["positions"]["position_y"]["type"] = "datetime"
                self.metadata["positions"]["position_y"]["type_id"] = (
                    "datetime$" + position_y_input_format
                )
                self.metadata["positions"]["position_y"]["output_format_id"] = (
                    "datetime$" + position_y_output_format
                )
            elif "_" in position_y_output_format:
                self.metadata["positions"]["position_y"]["type"] = "number"
                self.metadata["positions"]["position_y"]["type_id"] = (
                    "number$" + position_y_input_format
                )
                self.metadata["positions"]["position_y"]["output_format_id"] = (
                    "number$" + position_y_output_format
                )
            elif (
                position_y_output_format is not None
                and not position_y_output_format.startswith("%")
                and "_" not in position_y_output_format
            ):
                self.metadata["positions"]["position_y"]["type"] = "string"
                self.metadata["positions"]["position_y"]["type_id"] = (
                    "string$" + position_y_input_format
                )
                self.metadata["positions"]["position_y"]["output_format_id"] = (
                    "string$" + position_y_output_format
                )

        if filter_output_format is not None:
            if filter_input_format is None and filter_output_format is not None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            elif filter_input_format is not None and filter_output_format is None:
                f"[filter_input_format] and [filter_output_format] must both be defined."
            if filter_output_format.startswith("%"):
                self.metadata["positions"]["filter"]["type"] = "datetime"
                self.metadata["positions"]["filter"]["type_id"] = (
                    "datetime$" + filter_input_format
                )
                self.metadata["positions"]["filter"]["output_format_id"] = (
                    "datetime$" + filter_output_format
                )
            elif "_" in filter_output_format:
                self.metadata["positions"]["filter"]["type"] = "number"
                self.metadata["positions"]["filter"]["type_id"] = (
                    "number$" + filter_input_format
                )
                self.metadata["positions"]["filter"]["output_format_id"] = (
                    "number$" + filter_output_format
                )
            elif (
                filter_output_format is not None
                and not filter_output_format.startswith("%")
                and "_" not in filter_output_format
            ):
                self.metadata["positions"]["filter"]["type"] = "string"
                self.metadata["positions"]["filter"]["type_id"] = (
                    "string$" + filter_input_format
                )
                self.metadata["positions"]["filter"]["output_format_id"] = (
                    "string$" + filter_output_format
                )

        if photo_output_format is not None:
            if photo_input_format is None and photo_output_format is not None:
                f"[photo_input_format] and [photo_output_format] must both be defined."
            elif photo_input_format is not None and photo_output_format is None:
                f"[photo_input_format] and [photo_output_format] must both be defined."
            if photo_output_format.startswith("%"):
                self.metadata["positions"]["photo"]["type"] = "datetime"
                self.metadata["positions"]["photo"]["type_id"] = (
                    "datetime$" + photo_input_format
                )
                self.metadata["positions"]["photo"]["output_format_id"] = (
                    "datetime$" + photo_output_format
                )
            elif "_" in photo_output_format:
                self.metadata["positions"]["photo"]["type"] = "number"
                self.metadata["positions"]["photo"]["type_id"] = (
                    "number$" + photo_input_format
                )
                self.metadata["positions"]["photo"]["output_format_id"] = (
                    "number$" + photo_output_format
                )
            elif (
                photo_output_format is not None
                and not photo_output_format.startswith("%")
                and "_" not in photo_output_format
            ):
                self.metadata["positions"]["photo"]["type"] = "string"
                self.metadata["positions"]["photo"]["type_id"] = (
                    "string$" + photo_input_format
                )
                self.metadata["positions"]["photo"]["output_format_id"] = (
                    "string$" + photo_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["positions"]["metadata"]["type"] = "datetime"
                self.metadata["positions"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["positions"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["positions"]["metadata"]["type"] = "number"
                self.metadata["positions"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["positions"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["positions"]["metadata"]["type"] = "string"
                self.metadata["positions"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["positions"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_sports_race_data(
        self,
        data: pd.DataFrame = None,
        name: str = None,
        times: Union[list, str] = None,
        start_image: str = None,
        race_image: str = None,
        finish_image: str = None,
        color_category: str = None,
    ):
        """
        Bind data to chart: sports race.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param name: Name. Name of competitor. Flourish type hint: column
        :type name: str, optional

        :param times: Times. One or more columns of numbers, representing splits or laps, or a whole race. Flourish type hint: columns
        :type times: Union[list, str], optional

        :param start_image: Start image. The image to use at the start of the race. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type start_image: str, optional

        :param race_image: Racing image. The image to use while a participant is racing. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type race_image: str, optional

        :param finish_image: Finish image. The image to use when the participant has finished the race. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type finish_image: str, optional

        :param color_category: Color category. Add a category to color participants by. If empty, the name column will be used for colors. Flourish type hint: column
        :type color_category: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {}

        if name is not None:
            assert name in data_columns, f"[name] is not a column in the data."
            self.bindings["data"]["name"] = name

        if times is not None:
            if isinstance(times, list):
                for col in times:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["times"] = times
            elif isinstance(times, str):
                assert times in data_columns, f"[times] is not a column in the data."
                self.bindings["data"]["times"] = [times]
        else:
            self.bindings["data"]["times"] = []

        if start_image is not None:
            assert (
                start_image in data_columns
            ), f"[start_image] is not a column in the data."
            self.bindings["data"]["start_image"] = start_image

        if race_image is not None:
            assert (
                race_image in data_columns
            ), f"[race_image] is not a column in the data."
            self.bindings["data"]["race_image"] = race_image

        if finish_image is not None:
            assert (
                finish_image in data_columns
            ), f"[finish_image] is not a column in the data."
            self.bindings["data"]["finish_image"] = finish_image

        if color_category is not None:
            assert (
                color_category in data_columns
            ), f"[color_category] is not a column in the data."
            self.bindings["data"]["color_category"] = color_category
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_survey_data(
        self,
        questions_data: pd.DataFrame = None,
        order_data: pd.DataFrame = None,
        labels_data: pd.DataFrame = None,
        colors_data: pd.DataFrame = None,
        places_data: pd.DataFrame = None,
        answer_groups_data: pd.DataFrame = None,
        questions_categorical: Union[list, str] = None,
        questions_continuous: Union[list, str] = None,
        questions_geo: Union[list, str] = None,
        questions_label: str = None,
        questions_column_filter: str = None,
        questions_id: str = None,
        questions_metadata: Union[list, str] = None,
        order_categories: Union[list, str] = None,
        labels_label: str = None,
        labels_replacement: str = None,
        colors_question: str = None,
        colors_answer: str = None,
        colors_color: str = None,
        places_latitude: str = None,
        places_longitude: str = None,
        places_names: Union[list, str] = None,
        answer_groups_group: str = None,
        answer_groups_question: str = None,
        answer_groups_display_as: str = None,
        answer_groups_affirmative_answers: Union[list, str] = None,
    ):
        """
        Bind data to chart: survey.


        :param questions_data: Questions data. The main data sheet. Each row in this table will become a dot in the graphic., defaults to None
        :type questions_data: pd.DataFrame, optional

        :param order_data: Order data. Groups by default appear in size or alphabetical order. You can override these with the "Group order" sheet., defaults to None
        :type order_data: pd.DataFrame, optional

        :param labels_data: Labels data. Allows you to change how any phrase in the main data sheet is displayed in the graphic. Useful for shortening long questions, translating, etc., defaults to None
        :type labels_data: pd.DataFrame, optional

        :param colors_data: Colors data. Use this extra table if you want to specify specific colors in the context of specific questions. E.g. to make a red to green scale from "strongly diagree" to "strongly agree"., defaults to None
        :type colors_data: pd.DataFrame, optional

        :param places_data: Places data. A table of places found in the geographic columns of the main data sheet, each with latitude and longitude to plot it on the map, defaults to None
        :type places_data: pd.DataFrame, optional

        :param answer_groups_data: Answer groups data. Grouped questions, in the form "Which of the following apply?", are made by combining mutiple yes/no columns in the main data sheet., defaults to None
        :type answer_groups_data: pd.DataFrame, optional

        :param questions_categorical: Categorical columns. Each of these columns appears in the Group by, Shade by and Compare dropdowns. Flourish type hint: columns
        :type questions_categorical: Union[list, str], optional

        :param questions_continuous: Continuous columns. Must contain numbers. Each of these columns appears in the Size by dropdown. Flourish type hint: columns
        :type questions_continuous: Union[list, str], optional

        :param questions_geo: Geographic columns. Must contain place names matching those specified in the Places sheet. Set to blank to disable the map mode. Flourish type hint: columns
        :type questions_geo: Union[list, str], optional

        :param questions_label: Label. A column containing text (e.g. names or emoji) to write on the dots. Not recommended for datasets with more than a few hundred dots. Flourish type hint: column
        :type questions_label: str, optional

        :param questions_column_filter: Slider or menu. Add a time slider or menu to filter the data based on the contents of a single column. Flourish type hint: column
        :type questions_column_filter: str, optional

        :param questions_id: Unique name/ID. Specify to allow animations between multiple occurrences of the same person or thing e.g. when using a time slider. Flourish type hint: column
        :type questions_id: str, optional

        :param questions_metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panelsFlourish type hint: columns
        :type questions_metadata: Union[list, str], optional

        :param order_categories: Order of answers. Use one column for each question or metric. Put the column header from the main data sheet at the top (e.g. "Do you agree?"), followed by the answers in the order you want (e.g. "disagree", "neutral", "agree"). Flourish type hint: columns
        :type order_categories: Union[list, str], optional

        :param labels_label: Label. A column containing phrases from the main data sheet. Flourish type hint: column
        :type labels_label: str, optional

        :param labels_replacement: Replacement. A column containing the phrase to display. Flourish type hint: column
        :type labels_replacement: str, optional

        :param colors_question: Question. The column header (e.g. a survey question) exactly as it appears in the main data sheet. Flourish type hint: column
        :type colors_question: str, optional

        :param colors_answer: Answer. Use one column for each question or metric. Put the column header from the main datasheet at the top (e.g. "Do you agree?"), followed by the answers in the order you want (e.g. "disagree", "neutral", "agree"). Flourish type hint: column
        :type colors_answer: str, optional

        :param colors_color: Color. A color name (e.g. orange, red) or code (e.g. #ff3300, #ff0000). Flourish type hint: column
        :type colors_color: str, optional

        :param places_latitude: Latitude. A column of latitude values. Flourish type hint: column
        :type places_latitude: str, optional

        :param places_longitude: Longitude. A column of longitude values. Flourish type hint: column
        :type places_longitude: str, optional

        :param places_names: Names. One or more columns of place names matching those in the main data sheet. Flourish type hint: columns
        :type places_names: Union[list, str], optional

        :param answer_groups_group: Group name. This column will contain the name of the grouped question Flourish type hint: column
        :type answer_groups_group: str, optional

        :param answer_groups_question: Question. A question that matches exactly one of the questions in the datasheet. Flourish type hint: column
        :type answer_groups_question: str, optional

        :param answer_groups_display_as: Display answer as. This will be the new text for the question. Flourish type hint: column
        :type answer_groups_display_as: str, optional

        :param answer_groups_affirmative_answers: Answers to include. The respondent is included in the group if their answer to the question is one of the answers listed in these columns. Flourish type hint: columns
        :type answer_groups_affirmative_answers: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["questions"] = {}
        self.data_properties["questions"] = {}
        if questions_data is not None:
            questions_columns = set(questions_data.columns)
            int_columns_questions_data = questions_data.select_dtypes(
                include="int"
            ).columns
            questions_data[int_columns_questions_data] = questions_data[
                int_columns_questions_data
            ].astype(str)
            self.data_properties["questions"] = questions_data.to_dict(orient="records")

        self.bindings["order"] = {}
        self.data_properties["order"] = {}
        if order_data is not None:
            order_columns = set(order_data.columns)
            int_columns_order_data = order_data.select_dtypes(include="int").columns
            order_data[int_columns_order_data] = order_data[
                int_columns_order_data
            ].astype(str)
            self.data_properties["order"] = order_data.to_dict(orient="records")

        self.bindings["labels"] = {}
        self.data_properties["labels"] = {}
        if labels_data is not None:
            labels_columns = set(labels_data.columns)
            int_columns_labels_data = labels_data.select_dtypes(include="int").columns
            labels_data[int_columns_labels_data] = labels_data[
                int_columns_labels_data
            ].astype(str)
            self.data_properties["labels"] = labels_data.to_dict(orient="records")

        self.bindings["colors"] = {}
        self.data_properties["colors"] = {}
        if colors_data is not None:
            colors_columns = set(colors_data.columns)
            int_columns_colors_data = colors_data.select_dtypes(include="int").columns
            colors_data[int_columns_colors_data] = colors_data[
                int_columns_colors_data
            ].astype(str)
            self.data_properties["colors"] = colors_data.to_dict(orient="records")

        self.bindings["places"] = {}
        self.data_properties["places"] = {}
        if places_data is not None:
            places_columns = set(places_data.columns)
            int_columns_places_data = places_data.select_dtypes(include="int").columns
            places_data[int_columns_places_data] = places_data[
                int_columns_places_data
            ].astype(str)
            self.data_properties["places"] = places_data.to_dict(orient="records")

        self.bindings["answer_groups"] = {}
        self.data_properties["answer_groups"] = {}
        if answer_groups_data is not None:
            answer_groups_columns = set(answer_groups_data.columns)
            int_columns_answer_groups_data = answer_groups_data.select_dtypes(
                include="int"
            ).columns
            answer_groups_data[int_columns_answer_groups_data] = answer_groups_data[
                int_columns_answer_groups_data
            ].astype(str)
            self.data_properties["answer_groups"] = answer_groups_data.to_dict(
                orient="records"
            )
        self.metadata = {}

        if questions_categorical is not None:
            if isinstance(questions_categorical, list):
                for col in questions_categorical:
                    assert (
                        col in questions_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["questions"]["categorical"] = questions_categorical
            elif isinstance(questions_categorical, str):
                assert (
                    questions_categorical in questions_columns
                ), f"[questions_categorical] is not a column in the data."
                self.bindings["questions"]["categorical"] = [questions_categorical]
        else:
            self.bindings["questions"]["categorical"] = []

        if questions_continuous is not None:
            if isinstance(questions_continuous, list):
                for col in questions_continuous:
                    assert (
                        col in questions_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["questions"]["continuous"] = questions_continuous
            elif isinstance(questions_continuous, str):
                assert (
                    questions_continuous in questions_columns
                ), f"[questions_continuous] is not a column in the data."
                self.bindings["questions"]["continuous"] = [questions_continuous]
        else:
            self.bindings["questions"]["continuous"] = []

        if questions_geo is not None:
            if isinstance(questions_geo, list):
                for col in questions_geo:
                    assert (
                        col in questions_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["questions"]["geo"] = questions_geo
            elif isinstance(questions_geo, str):
                assert (
                    questions_geo in questions_columns
                ), f"[questions_geo] is not a column in the data."
                self.bindings["questions"]["geo"] = [questions_geo]
        else:
            self.bindings["questions"]["geo"] = []

        if questions_label is not None:
            assert (
                questions_label in questions_columns
            ), f"[questions_label] is not a column in the data."
            self.bindings["questions"]["label"] = questions_label

        if questions_column_filter is not None:
            assert (
                questions_column_filter in questions_columns
            ), f"[questions_column_filter] is not a column in the data."
            self.bindings["questions"]["column_filter"] = questions_column_filter

        if questions_id is not None:
            assert (
                questions_id in questions_columns
            ), f"[questions_id] is not a column in the data."
            self.bindings["questions"]["id"] = questions_id

        if questions_metadata is not None:
            if isinstance(questions_metadata, list):
                for col in questions_metadata:
                    assert (
                        col in questions_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["questions"]["metadata"] = questions_metadata
            elif isinstance(questions_metadata, str):
                assert (
                    questions_metadata in questions_columns
                ), f"[questions_metadata] is not a column in the data."
                self.bindings["questions"]["metadata"] = [questions_metadata]
        else:
            self.bindings["questions"]["metadata"] = []

        if order_categories is not None:
            if isinstance(order_categories, list):
                for col in order_categories:
                    assert (
                        col in order_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["order"]["categories"] = order_categories
            elif isinstance(order_categories, str):
                assert (
                    order_categories in order_columns
                ), f"[order_categories] is not a column in the data."
                self.bindings["order"]["categories"] = [order_categories]
        else:
            self.bindings["order"]["categories"] = []

        if labels_label is not None:
            assert (
                labels_label in labels_columns
            ), f"[labels_label] is not a column in the data."
            self.bindings["labels"]["label"] = labels_label

        if labels_replacement is not None:
            assert (
                labels_replacement in labels_columns
            ), f"[labels_replacement] is not a column in the data."
            self.bindings["labels"]["replacement"] = labels_replacement

        if colors_question is not None:
            assert (
                colors_question in colors_columns
            ), f"[colors_question] is not a column in the data."
            self.bindings["colors"]["question"] = colors_question

        if colors_answer is not None:
            assert (
                colors_answer in colors_columns
            ), f"[colors_answer] is not a column in the data."
            self.bindings["colors"]["answer"] = colors_answer

        if colors_color is not None:
            assert (
                colors_color in colors_columns
            ), f"[colors_color] is not a column in the data."
            self.bindings["colors"]["color"] = colors_color

        if places_latitude is not None:
            assert (
                places_latitude in places_columns
            ), f"[places_latitude] is not a column in the data."
            self.bindings["places"]["latitude"] = places_latitude

        if places_longitude is not None:
            assert (
                places_longitude in places_columns
            ), f"[places_longitude] is not a column in the data."
            self.bindings["places"]["longitude"] = places_longitude

        if places_names is not None:
            if isinstance(places_names, list):
                for col in places_names:
                    assert (
                        col in places_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["places"]["names"] = places_names
            elif isinstance(places_names, str):
                assert (
                    places_names in places_columns
                ), f"[places_names] is not a column in the data."
                self.bindings["places"]["names"] = [places_names]
        else:
            self.bindings["places"]["names"] = []

        if answer_groups_group is not None:
            assert (
                answer_groups_group in answer_groups_columns
            ), f"[answer_groups_group] is not a column in the data."
            self.bindings["answer_groups"]["group"] = answer_groups_group

        if answer_groups_question is not None:
            assert (
                answer_groups_question in answer_groups_columns
            ), f"[answer_groups_question] is not a column in the data."
            self.bindings["answer_groups"]["question"] = answer_groups_question

        if answer_groups_display_as is not None:
            assert (
                answer_groups_display_as in answer_groups_columns
            ), f"[answer_groups_display_as] is not a column in the data."
            self.bindings["answer_groups"]["display_as"] = answer_groups_display_as

        if answer_groups_affirmative_answers is not None:
            if isinstance(answer_groups_affirmative_answers, list):
                for col in answer_groups_affirmative_answers:
                    assert (
                        col in answer_groups_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["answer_groups"][
                    "affirmative_answers"
                ] = answer_groups_affirmative_answers
            elif isinstance(answer_groups_affirmative_answers, str):
                assert (
                    answer_groups_affirmative_answers in answer_groups_columns
                ), f"[answer_groups_affirmative_answers] is not a column in the data."
                self.bindings["answer_groups"]["affirmative_answers"] = [
                    answer_groups_affirmative_answers
                ]
        else:
            self.bindings["answer_groups"]["affirmative_answers"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_svg_annotator_data(
        self,
        data: pd.DataFrame = None,
        id: str = None,
        reveal_id: str = None,
        h1: str = None,
        h2: str = None,
        content: str = None,
        link: str = None,
        metadata: Union[list, str] = None,
    ):
        """
        Bind data to chart: svg annotator.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param id: ID. A column of IDs of elements in the uploaded SVG file. Flourish type hint: column
        :type id: str, optional

        :param reveal_id: Reveal layer. A column to reveal when layer is clicked. Flourish type hint: column
        :type reveal_id: str, optional

        :param h1: Heading 1. A column containing the main header. Flourish type hint: column
        :type h1: str, optional

        :param h2: Heading 2. A column containing a secondary header. Flourish type hint: column
        :type h2: str, optional

        :param content: Content. A column containing text or HTML to display. Flourish type hint: column
        :type content: str, optional

        :param link: Link. A URL that can be opened when a layer is clicked. Any reveal layers or popups will be overridden. Flourish type hint: column
        :type link: str, optional

        :param metadata: Info for popups. One or more columns to display in popups and panels. Flourish type hint: columns
        :type metadata: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {}

        if id is not None:
            assert id in data_columns, f"[id] is not a column in the data."
            self.bindings["data"]["id"] = id

        if reveal_id is not None:
            assert (
                reveal_id in data_columns
            ), f"[reveal_id] is not a column in the data."
            self.bindings["data"]["reveal_id"] = reveal_id

        if h1 is not None:
            assert h1 in data_columns, f"[h1] is not a column in the data."
            self.bindings["data"]["h1"] = h1

        if h2 is not None:
            assert h2 in data_columns, f"[h2] is not a column in the data."
            self.bindings["data"]["h2"] = h2

        if content is not None:
            assert content in data_columns, f"[content] is not a column in the data."
            self.bindings["data"]["content"] = content

        if link is not None:
            assert link in data_columns, f"[link] is not a column in the data."
            self.bindings["data"]["link"] = link

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in data_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["data"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in data_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["data"]["metadata"] = [metadata]
        else:
            self.bindings["data"]["metadata"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_table_data(
        self,
        rows_data: pd.DataFrame = None,
        columns: Union[list, str] = None,
        columns_input_format: str = None,
        columns_output_format: str = None,
    ):
        """
        Bind data to chart: table.

        :param rows_data: Rows data. defaults to None
        :type rows_data: pd.DataFrame, optional

        :param columns: Table values. The cell contents can by styled with html or markdown To style with markdown first make sure the Cell text styling setting in the Table section of the editor is on  To add an image, right click on a cell and click Upload fileSuggested data type hints: string, number, datetime. Flourish type hint: columns
        :type columns: Union[list, str], optional
        :param columns_input_format: Formats/parses dates, strings, and numbers for the [columns] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type columns_input_format: str, optional
        :param columns_output_format: Formats/parses dates, strings, and numbers for the [columns] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type columns_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["rows"] = {}
        self.data_properties["rows"] = {}
        if rows_data is not None:
            rows_columns = set(rows_data.columns)
            int_columns_rows_data = rows_data.select_dtypes(include="int").columns
            rows_data[int_columns_rows_data] = rows_data[int_columns_rows_data].astype(
                str
            )
            self.data_properties["rows"] = rows_data.to_dict(orient="records")
        self.metadata = {"rows": {"columns": {}}}

        if columns is not None:
            if isinstance(columns, list):
                for col in columns:
                    assert (
                        col in rows_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["rows"]["columns"] = columns
            elif isinstance(columns, str):
                assert (
                    columns in rows_columns
                ), f"[columns] is not a column in the data."
                self.bindings["rows"]["columns"] = [columns]
        else:
            self.bindings["rows"]["columns"] = []

        if columns_output_format is not None:
            if columns_input_format is None and columns_output_format is not None:
                f"[columns_input_format] and [columns_output_format] must both be defined."
            elif columns_input_format is not None and columns_output_format is None:
                f"[columns_input_format] and [columns_output_format] must both be defined."
            if columns_output_format.startswith("%"):
                self.metadata["rows"]["columns"]["type"] = "datetime"
                self.metadata["rows"]["columns"]["type_id"] = (
                    "datetime$" + columns_input_format
                )
                self.metadata["rows"]["columns"]["output_format_id"] = (
                    "datetime$" + columns_output_format
                )
            elif "_" in columns_output_format:
                self.metadata["rows"]["columns"]["type"] = "number"
                self.metadata["rows"]["columns"]["type_id"] = (
                    "number$" + columns_input_format
                )
                self.metadata["rows"]["columns"]["output_format_id"] = (
                    "number$" + columns_output_format
                )
            elif (
                columns_output_format is not None
                and not columns_output_format.startswith("%")
                and "_" not in columns_output_format
            ):
                self.metadata["rows"]["columns"]["type"] = "string"
                self.metadata["rows"]["columns"]["type_id"] = (
                    "string$" + columns_input_format
                )
                self.metadata["rows"]["columns"]["output_format_id"] = (
                    "string$" + columns_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_text_annotator_data(
        self,
        data: pd.DataFrame = None,
        text: str = None,
        note: str = None,
    ):
        """
        Bind data to chart: text annotator.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param text: Text. The piece of text you want to highlight. Note that text is case and space sensitive. Flourish type hint: column
        :type text: str, optional

        :param note: Annotation. The annotation content. Flourish type hint: column
        :type note: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {}

        if text is not None:
            assert text in data_columns, f"[text] is not a column in the data."
            self.bindings["data"]["text"] = text

        if note is not None:
            assert note in data_columns, f"[note] is not a column in the data."
            self.bindings["data"]["note"] = note
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_timeline_data(
        self,
        data: pd.DataFrame = None,
        time_start: str = None,
        time_end: str = None,
        category: str = None,
        title: str = None,
        subtitle: str = None,
        text: str = None,
        image: str = None,
        background: str = None,
        background_input_format: str = None,
        background_output_format: str = None,
        category_input_format: str = None,
        category_output_format: str = None,
        time_end_input_format: str = None,
        time_end_output_format: str = None,
        image_input_format: str = None,
        image_output_format: str = None,
        time_start_input_format: str = None,
        time_start_output_format: str = None,
        subtitle_input_format: str = None,
        subtitle_output_format: str = None,
        text_input_format: str = None,
        text_output_format: str = None,
        title_input_format: str = None,
        title_output_format: str = None,
    ):
        """
        Bind data to chart: timeline.

        :param data: Data. defaults to None
        :type data: pd.DataFrame, optional

        :param time_start: Time start
        :type time_start: str, optional

        :param time_end: End time. Sets the duration of the event in time scale mode. Flourish type hint: column
        :type time_end: str, optional

        :param category: Category
        :type category: str, optional

        :param title: Title. Title of the content. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type title: str, optional

        :param subtitle: Subtitle. Subtitle of the content. Suggested data type hints: string, number, datetime. Flourish type hint: column
        :type subtitle: str, optional

        :param text: Text. Text to display inside the data point. Flourish type hint: column
        :type text: str, optional

        :param image: Image. Main image for the event. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type image: str, optional

        :param background: Background image. Background image for the event. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type background: str, optional
        :param background_input_format: Formats/parses dates, strings, and numbers for the [background] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type background_input_format: str, optional
        :param background_output_format: Formats/parses dates, strings, and numbers for the [background] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type background_output_format: str, optional
        :param category_input_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_input_format: str, optional
        :param category_output_format: Formats/parses dates, strings, and numbers for the [category] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type category_output_format: str, optional
        :param time_end_input_format: Formats/parses dates, strings, and numbers for the [time_end] column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type time_end_input_format: str, optional
        :param time_end_output_format: Formats/parses dates, strings, and numbers for the [time_end] column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type time_end_output_format: str, optional
        :param image_input_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_input_format: str, optional
        :param image_output_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_output_format: str, optional
        :param time_start_input_format: Formats/parses dates, strings, and numbers for the [time_start] column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type time_start_input_format: str, optional
        :param time_start_output_format: Formats/parses dates, strings, and numbers for the [time_start] column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type time_start_output_format: str, optional
        :param subtitle_input_format: Formats/parses dates, strings, and numbers for the [subtitle] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type subtitle_input_format: str, optional
        :param subtitle_output_format: Formats/parses dates, strings, and numbers for the [subtitle] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type subtitle_output_format: str, optional
        :param text_input_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type text_input_format: str, optional
        :param text_output_format: Formats/parses dates, strings, and numbers for the [text] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type text_output_format: str, optional
        :param title_input_format: Formats/parses dates, strings, and numbers for the [title] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type title_input_format: str, optional
        :param title_output_format: Formats/parses dates, strings, and numbers for the [title] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type title_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["data"] = {}
        self.data_properties["data"] = {}
        if data is not None:
            data_columns = set(data.columns)
            int_columns_data = data.select_dtypes(include="int").columns
            data[int_columns_data] = data[int_columns_data].astype(str)
            self.data_properties["data"] = data.to_dict(orient="records")
        self.metadata = {
            "data": {
                "background": {},
                "category": {},
                "time_end": {},
                "image": {},
                "time_start": {},
                "subtitle": {},
                "text": {},
                "title": {},
            }
        }

        if time_start is not None:
            assert (
                time_start in data_columns
            ), f"[time_start] is not a column in the data."
            self.bindings["data"]["time_start"] = time_start

        if time_end is not None:
            assert time_end in data_columns, f"[time_end] is not a column in the data."
            self.bindings["data"]["time_end"] = time_end

        if category is not None:
            assert category in data_columns, f"[category] is not a column in the data."
            self.bindings["data"]["category"] = category

        if title is not None:
            assert title in data_columns, f"[title] is not a column in the data."
            self.bindings["data"]["title"] = title

        if subtitle is not None:
            assert subtitle in data_columns, f"[subtitle] is not a column in the data."
            self.bindings["data"]["subtitle"] = subtitle

        if text is not None:
            assert text in data_columns, f"[text] is not a column in the data."
            self.bindings["data"]["text"] = text

        if image is not None:
            assert image in data_columns, f"[image] is not a column in the data."
            self.bindings["data"]["image"] = image

        if background is not None:
            assert (
                background in data_columns
            ), f"[background] is not a column in the data."
            self.bindings["data"]["background"] = background

        if time_start_output_format is not None:
            if time_start_input_format is None and time_start_output_format is not None:
                f"[time_start_input_format] and [time_start_output_format] must both be defined."
            elif (
                time_start_input_format is not None and time_start_output_format is None
            ):
                f"[time_start_input_format] and [time_start_output_format] must both be defined."
            if time_start_output_format.startswith("%"):
                self.metadata["data"]["time_start"]["type"] = "datetime"
                self.metadata["data"]["time_start"]["type_id"] = (
                    "datetime$" + time_start_input_format
                )
                self.metadata["data"]["time_start"]["output_format_id"] = (
                    "datetime$" + time_start_output_format
                )
            elif "_" in time_start_output_format:
                self.metadata["data"]["time_start"]["type"] = "number"
                self.metadata["data"]["time_start"]["type_id"] = (
                    "number$" + time_start_input_format
                )
                self.metadata["data"]["time_start"]["output_format_id"] = (
                    "number$" + time_start_output_format
                )
            elif (
                time_start_output_format is not None
                and not time_start_output_format.startswith("%")
                and "_" not in time_start_output_format
            ):
                self.metadata["data"]["time_start"]["type"] = "string"
                self.metadata["data"]["time_start"]["type_id"] = (
                    "string$" + time_start_input_format
                )
                self.metadata["data"]["time_start"]["output_format_id"] = (
                    "string$" + time_start_output_format
                )

        if time_end_output_format is not None:
            if time_end_input_format is None and time_end_output_format is not None:
                f"[time_end_input_format] and [time_end_output_format] must both be defined."
            elif time_end_input_format is not None and time_end_output_format is None:
                f"[time_end_input_format] and [time_end_output_format] must both be defined."
            if time_end_output_format.startswith("%"):
                self.metadata["data"]["time_end"]["type"] = "datetime"
                self.metadata["data"]["time_end"]["type_id"] = (
                    "datetime$" + time_end_input_format
                )
                self.metadata["data"]["time_end"]["output_format_id"] = (
                    "datetime$" + time_end_output_format
                )
            elif "_" in time_end_output_format:
                self.metadata["data"]["time_end"]["type"] = "number"
                self.metadata["data"]["time_end"]["type_id"] = (
                    "number$" + time_end_input_format
                )
                self.metadata["data"]["time_end"]["output_format_id"] = (
                    "number$" + time_end_output_format
                )
            elif (
                time_end_output_format is not None
                and not time_end_output_format.startswith("%")
                and "_" not in time_end_output_format
            ):
                self.metadata["data"]["time_end"]["type"] = "string"
                self.metadata["data"]["time_end"]["type_id"] = (
                    "string$" + time_end_input_format
                )
                self.metadata["data"]["time_end"]["output_format_id"] = (
                    "string$" + time_end_output_format
                )

        if category_output_format is not None:
            if category_input_format is None and category_output_format is not None:
                f"[category_input_format] and [category_output_format] must both be defined."
            elif category_input_format is not None and category_output_format is None:
                f"[category_input_format] and [category_output_format] must both be defined."
            if category_output_format.startswith("%"):
                self.metadata["data"]["category"]["type"] = "datetime"
                self.metadata["data"]["category"]["type_id"] = (
                    "datetime$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "datetime$" + category_output_format
                )
            elif "_" in category_output_format:
                self.metadata["data"]["category"]["type"] = "number"
                self.metadata["data"]["category"]["type_id"] = (
                    "number$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "number$" + category_output_format
                )
            elif (
                category_output_format is not None
                and not category_output_format.startswith("%")
                and "_" not in category_output_format
            ):
                self.metadata["data"]["category"]["type"] = "string"
                self.metadata["data"]["category"]["type_id"] = (
                    "string$" + category_input_format
                )
                self.metadata["data"]["category"]["output_format_id"] = (
                    "string$" + category_output_format
                )

        if title_output_format is not None:
            if title_input_format is None and title_output_format is not None:
                f"[title_input_format] and [title_output_format] must both be defined."
            elif title_input_format is not None and title_output_format is None:
                f"[title_input_format] and [title_output_format] must both be defined."
            if title_output_format.startswith("%"):
                self.metadata["data"]["title"]["type"] = "datetime"
                self.metadata["data"]["title"]["type_id"] = (
                    "datetime$" + title_input_format
                )
                self.metadata["data"]["title"]["output_format_id"] = (
                    "datetime$" + title_output_format
                )
            elif "_" in title_output_format:
                self.metadata["data"]["title"]["type"] = "number"
                self.metadata["data"]["title"]["type_id"] = (
                    "number$" + title_input_format
                )
                self.metadata["data"]["title"]["output_format_id"] = (
                    "number$" + title_output_format
                )
            elif (
                title_output_format is not None
                and not title_output_format.startswith("%")
                and "_" not in title_output_format
            ):
                self.metadata["data"]["title"]["type"] = "string"
                self.metadata["data"]["title"]["type_id"] = (
                    "string$" + title_input_format
                )
                self.metadata["data"]["title"]["output_format_id"] = (
                    "string$" + title_output_format
                )

        if subtitle_output_format is not None:
            if subtitle_input_format is None and subtitle_output_format is not None:
                f"[subtitle_input_format] and [subtitle_output_format] must both be defined."
            elif subtitle_input_format is not None and subtitle_output_format is None:
                f"[subtitle_input_format] and [subtitle_output_format] must both be defined."
            if subtitle_output_format.startswith("%"):
                self.metadata["data"]["subtitle"]["type"] = "datetime"
                self.metadata["data"]["subtitle"]["type_id"] = (
                    "datetime$" + subtitle_input_format
                )
                self.metadata["data"]["subtitle"]["output_format_id"] = (
                    "datetime$" + subtitle_output_format
                )
            elif "_" in subtitle_output_format:
                self.metadata["data"]["subtitle"]["type"] = "number"
                self.metadata["data"]["subtitle"]["type_id"] = (
                    "number$" + subtitle_input_format
                )
                self.metadata["data"]["subtitle"]["output_format_id"] = (
                    "number$" + subtitle_output_format
                )
            elif (
                subtitle_output_format is not None
                and not subtitle_output_format.startswith("%")
                and "_" not in subtitle_output_format
            ):
                self.metadata["data"]["subtitle"]["type"] = "string"
                self.metadata["data"]["subtitle"]["type_id"] = (
                    "string$" + subtitle_input_format
                )
                self.metadata["data"]["subtitle"]["output_format_id"] = (
                    "string$" + subtitle_output_format
                )

        if text_output_format is not None:
            if text_input_format is None and text_output_format is not None:
                f"[text_input_format] and [text_output_format] must both be defined."
            elif text_input_format is not None and text_output_format is None:
                f"[text_input_format] and [text_output_format] must both be defined."
            if text_output_format.startswith("%"):
                self.metadata["data"]["text"]["type"] = "datetime"
                self.metadata["data"]["text"]["type_id"] = (
                    "datetime$" + text_input_format
                )
                self.metadata["data"]["text"]["output_format_id"] = (
                    "datetime$" + text_output_format
                )
            elif "_" in text_output_format:
                self.metadata["data"]["text"]["type"] = "number"
                self.metadata["data"]["text"]["type_id"] = "number$" + text_input_format
                self.metadata["data"]["text"]["output_format_id"] = (
                    "number$" + text_output_format
                )
            elif (
                text_output_format is not None
                and not text_output_format.startswith("%")
                and "_" not in text_output_format
            ):
                self.metadata["data"]["text"]["type"] = "string"
                self.metadata["data"]["text"]["type_id"] = "string$" + text_input_format
                self.metadata["data"]["text"]["output_format_id"] = (
                    "string$" + text_output_format
                )

        if image_output_format is not None:
            if image_input_format is None and image_output_format is not None:
                f"[image_input_format] and [image_output_format] must both be defined."
            elif image_input_format is not None and image_output_format is None:
                f"[image_input_format] and [image_output_format] must both be defined."
            if image_output_format.startswith("%"):
                self.metadata["data"]["image"]["type"] = "datetime"
                self.metadata["data"]["image"]["type_id"] = (
                    "datetime$" + image_input_format
                )
                self.metadata["data"]["image"]["output_format_id"] = (
                    "datetime$" + image_output_format
                )
            elif "_" in image_output_format:
                self.metadata["data"]["image"]["type"] = "number"
                self.metadata["data"]["image"]["type_id"] = (
                    "number$" + image_input_format
                )
                self.metadata["data"]["image"]["output_format_id"] = (
                    "number$" + image_output_format
                )
            elif (
                image_output_format is not None
                and not image_output_format.startswith("%")
                and "_" not in image_output_format
            ):
                self.metadata["data"]["image"]["type"] = "string"
                self.metadata["data"]["image"]["type_id"] = (
                    "string$" + image_input_format
                )
                self.metadata["data"]["image"]["output_format_id"] = (
                    "string$" + image_output_format
                )

        if background_output_format is not None:
            if background_input_format is None and background_output_format is not None:
                f"[background_input_format] and [background_output_format] must both be defined."
            elif (
                background_input_format is not None and background_output_format is None
            ):
                f"[background_input_format] and [background_output_format] must both be defined."
            if background_output_format.startswith("%"):
                self.metadata["data"]["background"]["type"] = "datetime"
                self.metadata["data"]["background"]["type_id"] = (
                    "datetime$" + background_input_format
                )
                self.metadata["data"]["background"]["output_format_id"] = (
                    "datetime$" + background_output_format
                )
            elif "_" in background_output_format:
                self.metadata["data"]["background"]["type"] = "number"
                self.metadata["data"]["background"]["type_id"] = (
                    "number$" + background_input_format
                )
                self.metadata["data"]["background"]["output_format_id"] = (
                    "number$" + background_output_format
                )
            elif (
                background_output_format is not None
                and not background_output_format.startswith("%")
                and "_" not in background_output_format
            ):
                self.metadata["data"]["background"]["type"] = "string"
                self.metadata["data"]["background"]["type_id"] = (
                    "string$" + background_input_format
                )
                self.metadata["data"]["background"]["output_format_id"] = (
                    "string$" + background_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_tournament_data(
        self,
        matches_data: pd.DataFrame = None,
        round: str = None,
        team_a: str = None,
        team_b: str = None,
        winner: str = None,
        score_a: str = None,
        score_b: str = None,
        metadata: Union[list, str] = None,
        id: str = None,
        image: str = None,
        metadata_input_format: str = None,
        metadata_output_format: str = None,
        team_a_input_format: str = None,
        team_a_output_format: str = None,
        score_a_input_format: str = None,
        score_a_output_format: str = None,
        team_b_input_format: str = None,
        team_b_output_format: str = None,
        score_b_input_format: str = None,
        score_b_output_format: str = None,
        round_input_format: str = None,
        round_output_format: str = None,
        winner_input_format: str = None,
        winner_output_format: str = None,
        id_input_format: str = None,
        id_output_format: str = None,
        image_input_format: str = None,
        image_output_format: str = None,
    ):
        """
        Bind data to chart: tournament.


        :param matches_data: Matches data. teams, defaults to None
        :type matches_data: pd.DataFrame, optional

        :param round: Stage. The stage of the tournament, for example "Round of 16" or "Semifinals". Flourish type hint: column
        :type round: str, optional

        :param team_a: Participant A. The first participant or team in this match. Flourish type hint: column
        :type team_a: str, optional

        :param team_b: Participant B. The second participant or team in this match. Flourish type hint: column
        :type team_b: str, optional

        :param winner: Winner. The winning participant or team in this match. Must match the name of either Participant A or Participant B. If left blank, the template will assume that the match is upcoming. Flourish type hint: column
        :type winner: str, optional

        :param score_a: Participant A score. The score of Participant A in this match. Will appear along with the participants name in the box. Suggested data type hints: string, number. Flourish type hint: column
        :type score_a: str, optional

        :param score_b: Participant B score. The score of Participant B in this match. Will appear along with the participants name in the box. Suggested data type hints: string, number. Flourish type hint: column
        :type score_b: str, optional

        :param metadata: Info for popups. One or more columns of information (text,  image URLs ,  embedded charts  etc) to include in  popups and panels Suggested data type hints: string, number, datetime. Flourish type hint: columns
        :type metadata: Union[list, str], optional

        :param id: ID. Participant ID. Should match a participants name from the Matches sheet. Flourish type hint: column
        :type id: str, optional

        :param image: Image. Image to render in the participant box. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
        :type image: str, optional
        :param metadata_input_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_input_format: str, optional
        :param metadata_output_format: Formats/parses dates, strings, and numbers for the [metadata] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type metadata_output_format: str, optional
        :param team_a_input_format: Formats/parses dates, strings, and numbers for the [team_a] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type team_a_input_format: str, optional
        :param team_a_output_format: Formats/parses dates, strings, and numbers for the [team_a] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type team_a_output_format: str, optional
        :param score_a_input_format: Formats/parses dates, strings, and numbers for the [score_a] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type score_a_input_format: str, optional
        :param score_a_output_format: Formats/parses dates, strings, and numbers for the [score_a] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type score_a_output_format: str, optional
        :param team_b_input_format: Formats/parses dates, strings, and numbers for the [team_b] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type team_b_input_format: str, optional
        :param team_b_output_format: Formats/parses dates, strings, and numbers for the [team_b] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type team_b_output_format: str, optional
        :param score_b_input_format: Formats/parses dates, strings, and numbers for the [score_b] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type score_b_input_format: str, optional
        :param score_b_output_format: Formats/parses dates, strings, and numbers for the [score_b] column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type score_b_output_format: str, optional
        :param round_input_format: Formats/parses dates, strings, and numbers for the [round] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type round_input_format: str, optional
        :param round_output_format: Formats/parses dates, strings, and numbers for the [round] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type round_output_format: str, optional
        :param winner_input_format: Formats/parses dates, strings, and numbers for the [winner] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type winner_input_format: str, optional
        :param winner_output_format: Formats/parses dates, strings, and numbers for the [winner] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type winner_output_format: str, optional
        :param id_input_format: Formats/parses dates, strings, and numbers for the [id] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type id_input_format: str, optional
        :param id_output_format: Formats/parses dates, strings, and numbers for the [id] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type id_output_format: str, optional
        :param image_input_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_input_format: str, optional
        :param image_output_format: Formats/parses dates, strings, and numbers for the [image] column. If string: any arbritrary string. Note: metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format). defaults to None
        :type image_output_format: str, optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["matches"] = {}
        self.data_properties["matches"] = {}
        if matches_data is not None:
            matches_columns = set(matches_data.columns)
            int_columns_matches_data = matches_data.select_dtypes(include="int").columns
            matches_data[int_columns_matches_data] = matches_data[
                int_columns_matches_data
            ].astype(str)
            self.data_properties["matches"] = matches_data.to_dict(orient="records")
        self.metadata = {
            "matches": {
                "metadata": {},
                "team_a": {},
                "score_a": {},
                "team_b": {},
                "score_b": {},
                "round": {},
                "winner": {},
            },
            "teams": {"id": {}, "image": {}},
        }

        if round is not None:
            assert round in matches_columns, f"[round] is not a column in the data."
            self.bindings["matches"]["round"] = round

        if team_a is not None:
            assert team_a in matches_columns, f"[team_a] is not a column in the data."
            self.bindings["matches"]["team_a"] = team_a

        if team_b is not None:
            assert team_b in matches_columns, f"[team_b] is not a column in the data."
            self.bindings["matches"]["team_b"] = team_b

        if winner is not None:
            assert winner in matches_columns, f"[winner] is not a column in the data."
            self.bindings["matches"]["winner"] = winner

        if score_a is not None:
            assert score_a in matches_columns, f"[score_a] is not a column in the data."
            self.bindings["matches"]["score_a"] = score_a

        if score_b is not None:
            assert score_b in matches_columns, f"[score_b] is not a column in the data."
            self.bindings["matches"]["score_b"] = score_b

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in matches_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["matches"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in matches_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["matches"]["metadata"] = [metadata]
        else:
            self.bindings["matches"]["metadata"] = []

        if id is not None:
            assert id in teams_columns, f"[id] is not a column in the data."
            self.bindings["teams"]["id"] = id

        if image is not None:
            assert image in teams_columns, f"[image] is not a column in the data."
            self.bindings["teams"]["image"] = image

        if round_output_format is not None:
            if round_input_format is None and round_output_format is not None:
                f"[round_input_format] and [round_output_format] must both be defined."
            elif round_input_format is not None and round_output_format is None:
                f"[round_input_format] and [round_output_format] must both be defined."
            if round_output_format.startswith("%"):
                self.metadata["matches"]["round"]["type"] = "datetime"
                self.metadata["matches"]["round"]["type_id"] = (
                    "datetime$" + round_input_format
                )
                self.metadata["matches"]["round"]["output_format_id"] = (
                    "datetime$" + round_output_format
                )
            elif "_" in round_output_format:
                self.metadata["matches"]["round"]["type"] = "number"
                self.metadata["matches"]["round"]["type_id"] = (
                    "number$" + round_input_format
                )
                self.metadata["matches"]["round"]["output_format_id"] = (
                    "number$" + round_output_format
                )
            elif (
                round_output_format is not None
                and not round_output_format.startswith("%")
                and "_" not in round_output_format
            ):
                self.metadata["matches"]["round"]["type"] = "string"
                self.metadata["matches"]["round"]["type_id"] = (
                    "string$" + round_input_format
                )
                self.metadata["matches"]["round"]["output_format_id"] = (
                    "string$" + round_output_format
                )

        if team_a_output_format is not None:
            if team_a_input_format is None and team_a_output_format is not None:
                f"[team_a_input_format] and [team_a_output_format] must both be defined."
            elif team_a_input_format is not None and team_a_output_format is None:
                f"[team_a_input_format] and [team_a_output_format] must both be defined."
            if team_a_output_format.startswith("%"):
                self.metadata["matches"]["team_a"]["type"] = "datetime"
                self.metadata["matches"]["team_a"]["type_id"] = (
                    "datetime$" + team_a_input_format
                )
                self.metadata["matches"]["team_a"]["output_format_id"] = (
                    "datetime$" + team_a_output_format
                )
            elif "_" in team_a_output_format:
                self.metadata["matches"]["team_a"]["type"] = "number"
                self.metadata["matches"]["team_a"]["type_id"] = (
                    "number$" + team_a_input_format
                )
                self.metadata["matches"]["team_a"]["output_format_id"] = (
                    "number$" + team_a_output_format
                )
            elif (
                team_a_output_format is not None
                and not team_a_output_format.startswith("%")
                and "_" not in team_a_output_format
            ):
                self.metadata["matches"]["team_a"]["type"] = "string"
                self.metadata["matches"]["team_a"]["type_id"] = (
                    "string$" + team_a_input_format
                )
                self.metadata["matches"]["team_a"]["output_format_id"] = (
                    "string$" + team_a_output_format
                )

        if team_b_output_format is not None:
            if team_b_input_format is None and team_b_output_format is not None:
                f"[team_b_input_format] and [team_b_output_format] must both be defined."
            elif team_b_input_format is not None and team_b_output_format is None:
                f"[team_b_input_format] and [team_b_output_format] must both be defined."
            if team_b_output_format.startswith("%"):
                self.metadata["matches"]["team_b"]["type"] = "datetime"
                self.metadata["matches"]["team_b"]["type_id"] = (
                    "datetime$" + team_b_input_format
                )
                self.metadata["matches"]["team_b"]["output_format_id"] = (
                    "datetime$" + team_b_output_format
                )
            elif "_" in team_b_output_format:
                self.metadata["matches"]["team_b"]["type"] = "number"
                self.metadata["matches"]["team_b"]["type_id"] = (
                    "number$" + team_b_input_format
                )
                self.metadata["matches"]["team_b"]["output_format_id"] = (
                    "number$" + team_b_output_format
                )
            elif (
                team_b_output_format is not None
                and not team_b_output_format.startswith("%")
                and "_" not in team_b_output_format
            ):
                self.metadata["matches"]["team_b"]["type"] = "string"
                self.metadata["matches"]["team_b"]["type_id"] = (
                    "string$" + team_b_input_format
                )
                self.metadata["matches"]["team_b"]["output_format_id"] = (
                    "string$" + team_b_output_format
                )

        if winner_output_format is not None:
            if winner_input_format is None and winner_output_format is not None:
                f"[winner_input_format] and [winner_output_format] must both be defined."
            elif winner_input_format is not None and winner_output_format is None:
                f"[winner_input_format] and [winner_output_format] must both be defined."
            if winner_output_format.startswith("%"):
                self.metadata["matches"]["winner"]["type"] = "datetime"
                self.metadata["matches"]["winner"]["type_id"] = (
                    "datetime$" + winner_input_format
                )
                self.metadata["matches"]["winner"]["output_format_id"] = (
                    "datetime$" + winner_output_format
                )
            elif "_" in winner_output_format:
                self.metadata["matches"]["winner"]["type"] = "number"
                self.metadata["matches"]["winner"]["type_id"] = (
                    "number$" + winner_input_format
                )
                self.metadata["matches"]["winner"]["output_format_id"] = (
                    "number$" + winner_output_format
                )
            elif (
                winner_output_format is not None
                and not winner_output_format.startswith("%")
                and "_" not in winner_output_format
            ):
                self.metadata["matches"]["winner"]["type"] = "string"
                self.metadata["matches"]["winner"]["type_id"] = (
                    "string$" + winner_input_format
                )
                self.metadata["matches"]["winner"]["output_format_id"] = (
                    "string$" + winner_output_format
                )

        if score_a_output_format is not None:
            if score_a_input_format is None and score_a_output_format is not None:
                f"[score_a_input_format] and [score_a_output_format] must both be defined."
            elif score_a_input_format is not None and score_a_output_format is None:
                f"[score_a_input_format] and [score_a_output_format] must both be defined."
            if score_a_output_format.startswith("%"):
                self.metadata["matches"]["score_a"]["type"] = "datetime"
                self.metadata["matches"]["score_a"]["type_id"] = (
                    "datetime$" + score_a_input_format
                )
                self.metadata["matches"]["score_a"]["output_format_id"] = (
                    "datetime$" + score_a_output_format
                )
            elif "_" in score_a_output_format:
                self.metadata["matches"]["score_a"]["type"] = "number"
                self.metadata["matches"]["score_a"]["type_id"] = (
                    "number$" + score_a_input_format
                )
                self.metadata["matches"]["score_a"]["output_format_id"] = (
                    "number$" + score_a_output_format
                )
            elif (
                score_a_output_format is not None
                and not score_a_output_format.startswith("%")
                and "_" not in score_a_output_format
            ):
                self.metadata["matches"]["score_a"]["type"] = "string"
                self.metadata["matches"]["score_a"]["type_id"] = (
                    "string$" + score_a_input_format
                )
                self.metadata["matches"]["score_a"]["output_format_id"] = (
                    "string$" + score_a_output_format
                )

        if score_b_output_format is not None:
            if score_b_input_format is None and score_b_output_format is not None:
                f"[score_b_input_format] and [score_b_output_format] must both be defined."
            elif score_b_input_format is not None and score_b_output_format is None:
                f"[score_b_input_format] and [score_b_output_format] must both be defined."
            if score_b_output_format.startswith("%"):
                self.metadata["matches"]["score_b"]["type"] = "datetime"
                self.metadata["matches"]["score_b"]["type_id"] = (
                    "datetime$" + score_b_input_format
                )
                self.metadata["matches"]["score_b"]["output_format_id"] = (
                    "datetime$" + score_b_output_format
                )
            elif "_" in score_b_output_format:
                self.metadata["matches"]["score_b"]["type"] = "number"
                self.metadata["matches"]["score_b"]["type_id"] = (
                    "number$" + score_b_input_format
                )
                self.metadata["matches"]["score_b"]["output_format_id"] = (
                    "number$" + score_b_output_format
                )
            elif (
                score_b_output_format is not None
                and not score_b_output_format.startswith("%")
                and "_" not in score_b_output_format
            ):
                self.metadata["matches"]["score_b"]["type"] = "string"
                self.metadata["matches"]["score_b"]["type_id"] = (
                    "string$" + score_b_input_format
                )
                self.metadata["matches"]["score_b"]["output_format_id"] = (
                    "string$" + score_b_output_format
                )

        if metadata_output_format is not None:
            if metadata_input_format is None and metadata_output_format is not None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            elif metadata_input_format is not None and metadata_output_format is None:
                f"[metadata_input_format] and [metadata_output_format] must both be defined."
            if metadata_output_format.startswith("%"):
                self.metadata["matches"]["metadata"]["type"] = "datetime"
                self.metadata["matches"]["metadata"]["type_id"] = (
                    "datetime$" + metadata_input_format
                )
                self.metadata["matches"]["metadata"]["output_format_id"] = (
                    "datetime$" + metadata_output_format
                )
            elif "_" in metadata_output_format:
                self.metadata["matches"]["metadata"]["type"] = "number"
                self.metadata["matches"]["metadata"]["type_id"] = (
                    "number$" + metadata_input_format
                )
                self.metadata["matches"]["metadata"]["output_format_id"] = (
                    "number$" + metadata_output_format
                )
            elif (
                metadata_output_format is not None
                and not metadata_output_format.startswith("%")
                and "_" not in metadata_output_format
            ):
                self.metadata["matches"]["metadata"]["type"] = "string"
                self.metadata["matches"]["metadata"]["type_id"] = (
                    "string$" + metadata_input_format
                )
                self.metadata["matches"]["metadata"]["output_format_id"] = (
                    "string$" + metadata_output_format
                )

        if id_output_format is not None:
            if id_input_format is None and id_output_format is not None:
                f"[id_input_format] and [id_output_format] must both be defined."
            elif id_input_format is not None and id_output_format is None:
                f"[id_input_format] and [id_output_format] must both be defined."
            if id_output_format.startswith("%"):
                self.metadata["teams"]["id"]["type"] = "datetime"
                self.metadata["teams"]["id"]["type_id"] = "datetime$" + id_input_format
                self.metadata["teams"]["id"]["output_format_id"] = (
                    "datetime$" + id_output_format
                )
            elif "_" in id_output_format:
                self.metadata["teams"]["id"]["type"] = "number"
                self.metadata["teams"]["id"]["type_id"] = "number$" + id_input_format
                self.metadata["teams"]["id"]["output_format_id"] = (
                    "number$" + id_output_format
                )
            elif (
                id_output_format is not None
                and not id_output_format.startswith("%")
                and "_" not in id_output_format
            ):
                self.metadata["teams"]["id"]["type"] = "string"
                self.metadata["teams"]["id"]["type_id"] = "string$" + id_input_format
                self.metadata["teams"]["id"]["output_format_id"] = (
                    "string$" + id_output_format
                )

        if image_output_format is not None:
            if image_input_format is None and image_output_format is not None:
                f"[image_input_format] and [image_output_format] must both be defined."
            elif image_input_format is not None and image_output_format is None:
                f"[image_input_format] and [image_output_format] must both be defined."
            if image_output_format.startswith("%"):
                self.metadata["teams"]["image"]["type"] = "datetime"
                self.metadata["teams"]["image"]["type_id"] = (
                    "datetime$" + image_input_format
                )
                self.metadata["teams"]["image"]["output_format_id"] = (
                    "datetime$" + image_output_format
                )
            elif "_" in image_output_format:
                self.metadata["teams"]["image"]["type"] = "number"
                self.metadata["teams"]["image"]["type_id"] = (
                    "number$" + image_input_format
                )
                self.metadata["teams"]["image"]["output_format_id"] = (
                    "number$" + image_output_format
                )
            elif (
                image_output_format is not None
                and not image_output_format.startswith("%")
                and "_" not in image_output_format
            ):
                self.metadata["teams"]["image"]["type"] = "string"
                self.metadata["teams"]["image"]["type_id"] = (
                    "string$" + image_input_format
                )
                self.metadata["teams"]["image"]["output_format_id"] = (
                    "string$" + image_output_format
                )
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self

    def bind_word_cloud_data(
        self,
        words_data: pd.DataFrame = None,
        word: str = None,
        value: str = None,
        category: str = None,
        metadata: Union[list, str] = None,
    ):
        """
        Bind data to chart: word cloud.

        :param words_data: Words data. defaults to None
        :type words_data: pd.DataFrame, optional

        :param word: Word
        :type word: str, optional

        :param value: Value
        :type value: str, optional

        :param category: Category
        :type category: str, optional

        :param metadata: Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Flourish type hint: columns
        :type metadata: Union[list, str], optional

        """
        bindings_error(self)

        if not hasattr(self, "bindings"):
            self.bindings = {}
        if not hasattr(self, "data_properties"):
            self.data_properties = {}
        if not hasattr(self, "metadata"):
            self.metadata = {}
        self.bindings["words"] = {}
        self.data_properties["words"] = {}
        if words_data is not None:
            words_columns = set(words_data.columns)
            int_columns_words_data = words_data.select_dtypes(include="int").columns
            words_data[int_columns_words_data] = words_data[
                int_columns_words_data
            ].astype(str)
            self.data_properties["words"] = words_data.to_dict(orient="records")
        self.metadata = {}

        if word is not None:
            assert word in words_columns, f"[word] is not a column in the data."
            self.bindings["words"]["word"] = word

        if value is not None:
            assert value in words_columns, f"[value] is not a column in the data."
            self.bindings["words"]["value"] = value

        if category is not None:
            assert category in words_columns, f"[category] is not a column in the data."
            self.bindings["words"]["category"] = category

        if metadata is not None:
            if isinstance(metadata, list):
                for col in metadata:
                    assert (
                        col in words_columns
                    ), f"[{col}] is not a list of columns in the data."
                self.bindings["words"]["metadata"] = metadata
            elif isinstance(metadata, str):
                assert (
                    metadata in words_columns
                ), f"[metadata] is not a column in the data."
                self.bindings["words"]["metadata"] = [metadata]
        else:
            self.bindings["words"]["metadata"] = []
        self.data_and_bindings = {
            "data": self.data_properties,
            "bindings": self.bindings,
            "metadata": self.metadata,
        }

        dict_to_merge = self.data_and_bindings
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
        return self
