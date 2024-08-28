import unittest

import pandas as pd

from flourishcharts import bindings, flourish


class TestBindings(unittest.TestCase):
    @unittest.expectedFailure
    def test_referencing_invalid_df_column_raises_error(self):
        df = prepare_df()
        f_graph = flourish.Flourish(chart_type="scatter")
        with self.assertRaises(AssertionError):
            bindings.DataBindingsMixin.bind_scatter_data(
                f_graph, data=df, y=["col2"], x="col1"
            )

    @unittest.expectedFailure
    def test_referencing_incorrect_bindings_function_raises_error(self):
        df = prepare_df()
        f_graph = flourish.Flourish("line")
        with self.assertRaises(AssertionError):
            bindings.DataBindingsMixin.bind_scatter_data(
                f_graph, data=df, x="col1", y="col2"
            )


def prepare_df() -> pd.DataFrame:
    data = {"col1": [1, 2], "col2": [3, 4], "col3": ["five", "six"]}
    return pd.DataFrame(data)
