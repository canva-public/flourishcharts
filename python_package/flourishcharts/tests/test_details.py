import unittest
import pandas as pd
from flourishcharts import details, bindings, flourish


class TestDetails(unittest.TestCase):
    @unittest.expectedFailure
    def test_referencing_incorrect_details_function_raises_error(self):
        df = prepare_df()
        f_graph = flourish.Flourish("line")
        f_graph = bindings.DataBindingsMixin.bind_line_bar_pie_data(
            f_graph, data=df, label="col3", value=["col2"]
        )
        with self.assertRaises(AssertionError):
            details.DetailsMixin.set_scatter_details(f_graph, default_color="#00000")


def prepare_df() -> pd.DataFrame:
    data = {"col1": [1, 2], "col2": [3, 4], "col3": ["five", "six"]}
    return pd.DataFrame(data)
