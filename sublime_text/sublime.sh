!#/bin/bash

export SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3"

ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin;

wget -O "$SUBLIME_PATH/Installed Packages" "https://packagecontrol.io/Package%20Control.sublime-package";
cp "Package\ Control.sublime-settings" "$SUBLIME_PATH/Packages/User/"