#!/bin/bash

# remove default python
rm -rf Library/Python/

# virtualenv
pip3 install virtualenv;

# linters
pip3 install pylint flake8 pycodestyle autopep8;

# package building
pip3 install --user --upgrade setuptools wheel;
pip3 install --user --upgrade twine;

# install requirements in a virtualenv
virtualenv $HOME/venv -p python3;
source $HOME/venv/bin/activate;
pip3 install -r python/requirements.txt;

# fix matplotlib bug
cp python/matplotlibrc $HOME/.matplotlib/
