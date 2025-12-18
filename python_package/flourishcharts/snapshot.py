from typing import List, Union
from ._utils import clean_null_terms, deep_merge


class SnapshotMixin:
    def save_snapshot(
            self,
            filename: str = "Flourish_Live_API_image",
            format: str = "png",
            scale: int = 1
    ):
        """
        Save snapshot of interactive graph as a static file format.

        :param filename: File name of the image.
        :type filename: str, optional
        :param format: File format - can be "png", "jpeg", or "svg"
        :type format: str, optional
        :param scale: Image scale - default is 1. To scale up increase the integer to 2, etc.
        :type scale: int, optional
        """

        self.snapshot = {
            "snapshot_flag": True,
            "snapshot_metadata": {
                "filename": filename,
                "format": format,
                "scale": scale,
                "download": True
            }
        }
        dict_to_merge = self.snapshot
        clean_dict = clean_null_terms(dict_to_merge)
        self._model_data = deep_merge(self._model_data, clean_dict)
