#!/usr/bin/env bash

# exit if 1Password is already installed
command -v op &>/dev/null && exit

BASE_DIR=".local/share/chezmoi"

. "${BASE_DIR}/script_utils.sh"

case "$(uname -s)" in
Darwin)
  ;;
Linux)
  echo "${green}Installing 1Password${reset}"
  sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
  sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
  sudo dnf install -y -q 1password 1password-cli
  ;;
*)
  echo "${red}Unsupported OS${reset}"
  exit 0
  ;;
esac
