#!/bin/bash

pip install virtualenv;
pip install jupyterlab;
pip install pylint flake8 pycodestyle autopep8;

# Jupyter Lab
## Kernel
# pip install ipykernel;
# python -m ipykernel install --user --name myenv --display-name "Python (venv)"

## Extensions
jupyter labextension install @jupyterlab/toc
jupyter labextension install @krassowski/jupyterlab_go_to_definition
pip install jupyterlab_latex && jupyter labextension install @jupyterlab/latex
