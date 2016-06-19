#!/bin/sh

SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)

# Install Atom and dependencies if needed
brew cask install --appdir="/Applications" atom

if [[ ! -d "$HOME/.atom" ]]; then
  mkdir -p "$HOME/.atom"
fi

# Symlink the configuration files
for filepath in $SCRIPTPATH/config/*; do
  filename="`basename "$filepath"`"
  linkpath="$HOME/.atom/$filename"
  if [[ ! -L "$linkpath" && \
        ! -f "$linkpath" ]]; then
    ln -s "$filepath" "$linkpath"
  else
    echo "Atom config file $filename already exists, skipping."
  fi
done

# Install Atom packages
apm install \
  Stylus atom-beautify atom-jade atom-wallaby bottom-dock case-conversion \
  docblockr git-log language-docker language-scala language-spacebars linter \
  linter-docker linter-eslint markdown-scroll-sync markdown-writer \
  merge-conflicts minimap minimap-pigments octocat-syntax open-recent pigments sort-lines \
  space-tab todo-show wordcount
