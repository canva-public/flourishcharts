#!/usr/bin/env python
# coding: utf-8

# Copyright (c) Zoe Meers.
# Distributed under the terms of the MIT License.

import os
import pandas as pd

location = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
# read dataset
gapminder = pd.read_csv(os.path.join(location, "data", "gapminder.csv"))
