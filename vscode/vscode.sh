#!/bin/bash

# extensions
cat extensions.txt | xargs -L 1 echo code --install-extension

# settings
mkdir ~/Library/Application\ Support/Code/User/settings.json;
cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json;
