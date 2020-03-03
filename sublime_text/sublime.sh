#!/bin/bash

export SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3"

# packages
wget -O "$SUBLIME_PATH/Installed Packages/Package Control.sublime-package" https://packagecontrol.io/Package%20Control.sublime-package;
cp "sublime_text/Package Control.sublime-settings" "$SUBLIME_PATH/Packages/User/"
cp "sublime_text/Preferences.sublime-settings" "$SUBLIME_PATH/Packages/User/"
