#!/bin/bash

# install

pip install jupyterlab;

# configuration file

cp jupyter_notebook_config.py $HOME/.jupyter/

# Jupyter kernels

## Python in virtualenv
virtualenv $HOME/venv -p python3;
source $HOME/venv/bin/activate;
pip install ipykernel;
python -m ipykernel install --user --name venv --display-name "Python (venv)"

## R

Rscript -e 'install.packages(c("repr", "IRdisplay", "IRkernel"), type = "source", repos="https://cran.rstudio.com");'
Rscript -e 'IRkernel::installspec()'

# Extensions

## table of content
jupyter labextension install @jupyterlab/toc

## go to definition
jupyter labextension install @krassowski/jupyterlab_go_to_definition

## latex
pip install jupyterlab_latex && jupyter labextension install @jupyterlab/latex

## templates
pip install jupyterlab_templates;
jupyter labextension install jupyterlab_templates;
jupyter serverextension enable --py jupyterlab_templates;
cp notebook_templates /usr/local/share/jupyter/notebook_templates;

## plotly
jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1;
jupyter labextension install jupyterlab-plotly@1.5.0;
jupyter labextension install plotlywidget@1.5.0;
