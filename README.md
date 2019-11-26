# Dotfiles for macos

I save my configuration files in this repository for an easy setup of a new machine.

Run it with:

``` bash
bash setup.sh
```

Including configuration for:

- [Brew](https://brew.sh/)
- [Zsh](http://www.zsh.org/)
- [OhMyZsh](http://ohmyz.sh/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Vim](https://www.vim.org/)
- [Sublime Text](https://www.sublimetext.com/)
- [Tmux](https://github.com/tmux/tmux)

## Vim Configuration

Plugins are installed with [Pathogen](https://github.com/tpope/vim-pathogen).

Here are the plugins I am using so far:

- Layout
  - [vim-airline](https://github.com/vim-airline/vim-airline)
- Code
  - [NerdCommenter](https://github.com/scrooloose/nerdcommenter)
  - [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - [ale](https://github.com/w0rp/ale)

## Sublime Text packages

- Emmet
- Material Theme
- Package Control
- SideBarEnhancements
- SublimeLinter-flake8
- SublimeLinter-pep8
- SummitLinter

## Jupyterlab

### Generate configuration

``` text
jupyter lab --generate-config;
```

### Kernels

#### Python with `virtualenv`

``` text
# install a kernel
source venv/bin/activate;
pip install ipykernel;
ipython kernel install --user --name=myenv

# remove a kernel
jupyter kernelspec uninstall myenv  
```

#### R kernel

You need to install `zmq` first, by running `brew install zmq`. Then, run the following in `R`:

``` R
install.packages(c('repr', 'IRdisplay', 'IRkernel'), type = 'source');
IRkernel::installspec()
```

### Jupyter extensions

#### Jupyterlab templates

``` text
pip install jupyterlab_templates;
jupyter labextension install jupyterlab_templates;
jupyter serverextension enable --py jupyterlab_templates;
```

Templates from [notebook_templates](./notebook_templates) must be copied within
`/usr/local/share/jupyter/notebook_templates`.

### Run jupyter in tmux

Run jupyter in tmux: 

```
tmux new -d -s jupyter 'jupyter-lab --no-browser;'
```
