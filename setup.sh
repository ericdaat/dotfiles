#!/bin/bash

# install software
xcode-select --install  # xcode command line tools
curl https://sh.rustup.rs -sSf | sh;  # rust
bash brew.sh
bash brew-cask.sh
bash vim.sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  # ohmyzsh

# copy .conf files
cp .zshrc ~/.zshrc
cp .aliases ~/.aliases
cp vscode.settings.json ~/Library/Application Support/Code/User/settings.json
cp .hyper.js ~/.hyper.js
cp vimrc ~/.vim/vimrc
cp .fzf.zsh ~/.fzf.zsh

# symlinks
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin  # sublime text
