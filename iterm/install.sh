#!/bin/zsh

brew cask install --appdir="~/Applications" iterm2

echo "Installing iTerm shell integration..."
curl -L https://iterm2.com/misc/`basename $SHELL`_startup.in >> ~/.iterm2_shell_integration.`basename $SHELL`

