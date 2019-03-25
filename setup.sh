#!/bin/bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

# Programming languages
brew install python3;  # python3
curl https://sh.rustup.rs -sSf | sh;  # rust

# Zsh and ohmyzsh
brew install zsh \
&& sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
&& cp terminal/.zshrc ~/.zshrc \
&& cp terminal/.bash_aliases ~/.bash_aliases \
&& cp terminal/.fzf.zsh ~/.fzf.zsh;

# Other useful programs
brew install tmux && cp terminal/.tmux.conf ~/.tmux.conf
brew install htop;
brew install fzf;
brew install ctags;

# VS Code
cp vscode/settings.json "~/Library/Application Support/Code/User/settings.json"
