#!/usr/bin/env bash

BASE_DIR=".local/share/chezmoi"

# shellcheck disable=SC1091
source "${BASE_DIR}/script_utils.sh"

if [ -f "${HOME}/.config/nvim/config.ld" ]; then
  # shellcheck disable=SC2154
  echo "${green}Updating AstroNvim${reset}"
  git -C "${HOME}/.config/nvim" pull --rebase --update-shallow -q
elif [ ! -d "${HOME}/.config/nvim" ]; then
  # shellcheck disable=SC2154
  echo "${green}Cloning AstroNvim${reset}"
  git clone --depth 1 -q https://github.com/AstroNvim/AstroNvim "${HOME}/.config/nvim"
else
  # shellcheck disable=SC2154
  echo "${green}Backing up existing nvim config${reset}"
  rm -Rf "${HOME}/.config/nvim.backup"
  mv "${HOME}/.config/nvim" "${HOME}/.config/nvim.backup"
  # shellcheck disable=SC2154
  echo "${green}Cloning AstroNvim${reset}"
  git clone --depth 1 -q https://github.com/AstroNvim/AstroNvim "${HOME}/.config/nvim"
fi
