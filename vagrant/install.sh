#!/bin/sh

SCRIPTPATH=$(dirname "$0")

# Install Vagrant and Virtualbox
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant

