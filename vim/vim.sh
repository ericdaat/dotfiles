#!/bin/bash

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim plugins
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter.git
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive.git && vim -u NONE -c "helptags vim-fugitive/doc" -c q
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale.git
git clone https://github.com/dracula/vim.git ~/.vim/bundle/dracula

# vimrc
cp vimrc ~/.vim/
