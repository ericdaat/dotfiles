#!/bin/bash

# install

pip3 install jupyterlab;
pip3 install jupyter;

# configuration file

cp jupyter/jupyter_notebook_config.py $HOME/.jupyter/

# Jupyter kernels

## Python in virtualenv
# virtualenv $HOME/venv -p python3;
# source $HOME/venv/bin/activate;
pip3 install ipykernel;
# python3 -m ipykernel install --user --name venv --display-name "Python (venv)"

## R

Rscript -e 'install.packages(c("repr", "IRdisplay", "IRkernel"), type = "source", repos="https://cran.rstudio.com");'
Rscript -e 'IRkernel::installspec()'

### R magic in jupyter
pip3 install rpy2

# Extensions

## table of content
jupyter-labextension install @jupyterlab/toc

## requirejs
jupyter-labextension install jupyterlab_requirejs

## flake 8 linter
# jupyter-labextension install jupyterlab-flake8

## go to definition
# jupyter-labextension install @krassowski/jupyterlab_go_to_definition

## latex
pip install jupyterlab_latex && jupyter-labextension install @jupyterlab/latex

## git
pip3 install --upgrade jupyterlab-git
jupyter lab build

## templates
pip3 install jupyterlab_templates;
jupyter-labextension install jupyterlab_templates;
jupyter serverextension enable --py jupyterlab_templates;
cp -R notebook_templates /usr/local/share/jupyter/notebook_templates;

## plotly
jupyter-labextension install @jupyter-widgets/jupyterlab-manager@1.1;
jupyter-labextension install jupyterlab-plotly@1.5.0;
jupyter-labextension install plotlywidget@1.5.0;
