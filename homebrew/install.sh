#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Install homebrew packages
brew install grc coreutils spark mc gibo tmux reattach-to-user-namespace direnv git-flow ssh-copy-id openssl mariadb

# Install Heroku
brew install heroku-toolbelt
heroku update

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

exit 0
