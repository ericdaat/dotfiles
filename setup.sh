#!/bin/bash

# install software
xcode-select --install  # xcode command line tools
curl https://sh.rustup.rs -sSf | sh;  # rust
bash brew.sh
bash brew-cask.sh
bash vim.sh

# zsh customization
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  # ohmyzsh
## zsh theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# fonts
cd ~/Library/Fonts \
&& wget https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf

# copy .conf files
cp .zshrc ~/.zshrc
cp .aliases ~/.aliases
cp vscode.settings.json ~/Library/Application Support/Code/User/settings.json
cp .hyper.js ~/.hyper.js
cp vimrc ~/.vim/vimrc
cp .fzf.zsh ~/.fzf.zsh

# symlinks
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin  # sublime text
