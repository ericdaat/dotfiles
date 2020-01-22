#!/bin/bash

# xcode command line tools
xcode-select --install

# fonts
cp fonts/SourceCodePro-Regular.ttf ~/Library/Fonts/

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
brew update;
brew upgrade;
bash brew/brew-cask.sh
bash brew/brew.sh

# Configure vim
bash vim/vim.sh

# Install & configure python
bash python/python.sh

# zsh customization
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  # ohmyzsh

## zsh theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## zsh dotfiles
cp zsh/.zshrc ~/
cp zsh/.aliases.zsh ~/
cp zsh/.fzf.zsh ~/
cp zsh/.p10k.zsh ~/

# vscode
cp vscode/settings.json ~/Library/Application Support/Code/User/settings.json

# git
cp git/.gitconfig ~/.gitconfig

# jupyter


# Sublime Text
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin  # sublime text

# Other
cp .hyper.js ~/
cp .tmux.conf ~/.tmux.conf
curl https://sh.rustup.rs -sSf | sh;  # rust
gem install bundler jekyll;  # jekyll
