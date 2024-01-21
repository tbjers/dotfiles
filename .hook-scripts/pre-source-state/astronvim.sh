#!/usr/bin/env bash

BASE_DIR=".local/share/chezmoi"

. "${BASE_DIR}/script_utils.sh"

if [ -f "${HOME}/.config/nvim/config.ld" ]; then
  echo "${green}Updating AstroNvim${reset}"
  git -C "${HOME}/.config/nvim" pull --rebase --update-shallow -q
elif [ ! -d "${HOME}/.config/nvim" ]; then
  echo "${green}Cloning AstroNvim${reset}"
  git clone --depth 1 -q https://github.com/AstroNvim/AstroNvim "${HOME}/.config/nvim"
else
  echo "${green}Backing up existing nvim config${reset}"
  rm -Rf "${HOME}/.config/nvim.backup"
  mv "${HOME}/.config/nvim" "${HOME}/.config/nvim.backup"
  echo "${green}Cloning AstroNvim${reset}"
  git clone --depth 1 -q https://github.com/AstroNvim/AstroNvim "${HOME}/.config/nvim"
fi
