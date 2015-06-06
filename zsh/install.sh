#!/bin/sh
echo "Changing default login shell to /bin/zsh..."
chsh -s /bin/zsh
curl -# https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $DOTFILES/zsh/antigen.zsh
