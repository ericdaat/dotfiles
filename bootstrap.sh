#!/bin/bash

# xcode command line tools
xcode-select --install

# fonts
cp fonts/SourceCodePro-Regular.ttf $HOME/Library/Fonts/

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
bash homebrew/brew.sh;
bash homebrew/brew-cask.sh;

# Vim
bash vim/vim.sh;

# Python
bash python/python.sh;

# Zsh
bash zsh/zsh.sh;

# Visual Studio Code
bash vscode/vscode.sh;

# git
cp git/.gitconfig $HOME/.gitconfig;

# Sublime Text
bash sublime_text/sublime.sh

# Hyper Terminal
bash hyper/hyper.sh

# tmux
cp tmux/.tmux.conf ~/.tmux.conf

# rust
curl https://sh.rustup.rs -sSf | sh;  

# jekyll
gem install bundler jekyll;
