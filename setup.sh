#!/bin/bash

# install software
xcode-select --install  # xcode command line tools
curl https://sh.rustup.rs -sSf | sh;  # rust
gem install bundler jekyll;  # jekyll

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
brew update;
brew upgrade;
bash brew-cask.sh
bash brew.sh

bash vim.sh
bash python.sh

# zsh customization
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  # ohmyzsh
## zsh theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# fonts
wget -P ~/Library/Fonts/ https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf

# copy .conf files
cp .zshrc ~/.zshrc
cp .aliases ~/.aliases
cp vscode.settings.json ~/Library/Application Support/Code/User/settings.json
cp .hyper.js ~/.hyper.js
cp vimrc ~/.vim/vimrc
cp .fzf.zsh ~/.fzf.zsh

# symlinks
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin  # sublime text
