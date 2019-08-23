#!/bin/bash

pip install virtualenv;
pip install jupyterlab;

virtualenv venv;
source venv/bin/activate;

# Jupyter Lab
## Kernel
pip install ipykernel;
python -m ipykernel install --user --name myenv --display-name "Python (venv)"

## Extensions
jupyter labextension install @jupyterlab/toc

