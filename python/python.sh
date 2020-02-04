#!/bin/bash

# virtualenv
python3 -m pip install virtualenv;

# linters
python3 -m pip install pylint flake8 pycodestyle autopep8;

# package building
python3 -m pip install --user --upgrade setuptools wheel;
python3 -m pip install --user --upgrade twine;

