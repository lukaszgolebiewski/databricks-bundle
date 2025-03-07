"""
setup.py configuration script describing how to build and package this project.

This file is primarily used by the setuptools library and typically should not
be executed directly. See README.md for how to deploy, test, and run
the lukasz2 project.
"""
from setuptools import setup, find_packages

import sys
sys.path.append('./src')

import lukasz2

setup(
    name="lukasz2",
    version=lukasz2.__version__,
    url="https://databricks.com",
    author="lgolebiewski@sii.pl",
    description="wheel file based on lukasz2/src",
    packages=find_packages(where='./src'),
    package_dir={'': 'src'},
    entry_points={
        "packages": [
            "main=lukasz2.main:main"
        ]
    },
    install_requires=[
        # Dependencies in case the output wheel file is used as a library dependency.
        # For defining dependencies, when this package is used in Databricks, see:
        # https://docs.databricks.com/dev-tools/bundles/library-dependencies.html
        "setuptools"
    ],
)
