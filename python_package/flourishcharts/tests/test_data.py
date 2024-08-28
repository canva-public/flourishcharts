import unittest

import flourishcharts


class TestData(unittest.TestCase):
    def test_internal_templates_have_unique_chart_type(self):
        templates = flourishcharts._utils.load_internal_templates()
        unique_py_chart_types = templates["chart_type"].unique()
        assert len(templates) == len(unique_py_chart_types)
