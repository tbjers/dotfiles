#!/usr/bin/env bash

# exit if pnpm is already installed
command -v pnpm &>/dev/null && exit

BASE_DIR=".local/share/chezmoi"

# shellcheck disable=SC1091
source "${BASE_DIR}/script_utils.sh"

case "$(osid)" in
"fedora-silverblue")
  wget -qO- https://get.pnpm.io/install.sh | sh - &&
    pnpm env use --global iron
  ;;
esac
