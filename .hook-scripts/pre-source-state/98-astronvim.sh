#!/usr/bin/env bash

BASE_DIR="${CHEZMOI_SOURCE_DIR}"

# shellcheck disable=SC1091
source "${BASE_DIR}/script_utils.sh"

case "$(osid)" in
"fedora-silverblue")
  if [ ! -f ~/.local/bin/nvim ]; then
    wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -O ~/.local/bin/nvim &&
      chmod u+x ~/.local/bin/nvim
  fi
  ;;
*) ;;
esac
