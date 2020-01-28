#!/bin/bash

# xcode command line tools
xcode-select --install

# fonts
cp fonts/SourceCodePro-Regular.ttf $HOME/Library/Fonts/

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
brew update;
brew upgrade;
bash brew/brew-cask.sh;
bash brew/brew.sh;

# Configure vim
bash vim/vim.sh;

# Install & configure python
bash python/python.sh;

# zsh customization
bash zsh/zsh.sh;

# vscode
bash vscode/vscode.sh;

# git
cp git/.gitconfig $HOME/.gitconfig;

# Sublime Text
bash sublime_text/sublime.sh

# Hyper
bash hyper/hyper.sh

# tmux
cp tmux/.tmux.conf ~/.tmux.conf

# rust
curl https://sh.rustup.rs -sSf | sh;  

# jekyll
gem install bundler jekyll;  
