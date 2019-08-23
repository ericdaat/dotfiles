#!/bin/bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

brew update;
brew upgrade;

brew install python3;
brew install vim --with-override-system-vi;
brew install htop;
brew install fzf;
brew install ctags;
brew install node;
brew install zsh;
brew install zsh-syntax-highlighting;
brew install zsh-autosuggestions;
brew install wget;
brew install tmux;
