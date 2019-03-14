#!/bin/bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

# Programming languages
brew install python3;  # python3
curl https://sh.rustup.rs -sSf | sh;  # rust

# Zsh and ohmyzsh
brew install zsh \
&& sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
&& cp .zshrc ~/.zshrc \
&& cp .bash_aliases ~/.bash_aliases;

# Other useful programs
brew install tmux && cp .tmux.conf ~/.tmux.conf
brew install htop;