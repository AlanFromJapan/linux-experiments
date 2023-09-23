#!/bin/bash

echo Installing VS.code extensions

# code --install-extension appliedengdesign.vscode-gcode-syntax
code --install-extension donjayamanne.githistory
# code --install-extension GitHub.copilot
# code --install-extension GitHub.copilot-chat
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
# code --install-extension ms-toolsai.jupyter
# code --install-extension ms-toolsai.jupyter-keymap
# code --install-extension ms-toolsai.jupyter-renderers
# code --install-extension ms-toolsai.vscode-jupyter-cell-tags
# code --install-extension ms-toolsai.vscode-jupyter-slideshow
code --install-extension ms-vscode.cmake-tools
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension ms-vscode.hexeditor
# code --install-extension tamasfe.even-better-toml
code --install-extension twxs.cmake

read -n1 -s -r -p $'Press any key to continue...\n' key

