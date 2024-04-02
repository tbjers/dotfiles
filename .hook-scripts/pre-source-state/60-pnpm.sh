#!/usr/bin/env bash

# exit if pnpm is already installed
command -v pnpm &>/dev/null && exit

BASE_DIR="${CHEZMOI_SOURCE_DIR}"

# shellcheck disable=SC1091
source "${BASE_DIR}/script_utils.sh"

case "$(osid)" in
"fedora-silverblue")
  # shellcheck disable=SC1090
  wget -qO- https://get.pnpm.io/install.sh | sh - &&
    source ~/.local/share/chezmoi/exact_private_dot_bashrc.d/40-pnpm.bash &&
    pnpm env use --global iron
  ;;
esac
