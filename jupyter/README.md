# Jupyter

## Run

Run jupyter in tmux:

``` bash
tmux new -d -s jupyter 'jupyter-lab --no-browser;'
```

## Kernels

### Python kernels

Install with:

```bash
source venv/bin/activate;
pip install ipykernel;
ipython kernel install --user --name=myenv
```

List with:

```bash
jupyter kernelspec list
```

Remove with:

```bash
jupyter kernelspec uninstall myenv
```

### R kernel

```R
install.packages('IRkernel')
IRkernel::installspec()  # to register the kernel in the current R installation
jupyter labextension install @techrah/text-shortcuts  # for RStudio’s shortcuts
```

### Julia kernel

```julia
] # pkg install mode
add iJulia
```

## Tips

- Run R code in a cell: `%load_ext rpy2.ipython` then use '%%R' magic command.
