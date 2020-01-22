# Jupyter

## Run

Run jupyter in tmux:

``` bash
tmux new -d -s jupyter 'jupyter-lab --no-browser;'
```

## Kernels

### Install a kernel

```bash
source venv/bin/activate;
pip install ipykernel;
ipython kernel install --user --name=myenv
```

### Remove a kernel

```bash
jupyter kernelspec uninstall myenv
```
