#!/usr/bin/env python
# coding: utf-8

# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

from __future__ import print_function
from glob import glob
import os
from os.path import join as pjoin
from setuptools import setup, find_packages
from setuptools.config.expand import cmdclass

HERE = os.path.dirname(os.path.abspath(__file__))
version = get_version(pjoin(name, "_version.py"))

# The name of the project
name = "flourishcharts"


setup_args = dict(
    name=name,
    description="Visualizing Flourish in Python.",
    version=version,
    scripts=glob(pjoin("scripts", "*")),
    cmdclass=cmdclass,
    packages=find_packages(),
    package_data={"flourishcharts": ["internal_data/*", "data/*"]},
    author="Zoe Meers",
    author_email="zoe.m@canva.com",
    url="https://github.com/canva-public/flourish-charts/python_package/flourishcharts",
    license="MIT",
    platforms="Linux, Mac OS X, Windows",
    keywords=["Jupyter", "Widgets", "IPython"],
    classifiers=[
        "Intended Audience :: Developers",
        "Intended Audience :: Science/Research",
        "Programming Language :: Python",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.4",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Programming Language :: Python :: 4.0",
        "Framework :: Jupyter",
    ],
    include_package_data=True,
    python_requires=">=3.6",
    install_requires=[
        "anywidget==0.7.1",
        "requests==2.32.2",
        "jupyterlab<=4.0.11",
    ],
    extras_require={
        "test": [
            "pytest>=4.6",
            "pytest-cov",
            "nbval",
        ],
        "examples": [
            # Any requirements for the examples to run
        ],
        "docs": ["jupyter_sphinx", "nbsphinx", "nbsphinx-link"],
    },
    entry_points={},
)

if __name__ == "__main__":
    setup(**setup_args)
