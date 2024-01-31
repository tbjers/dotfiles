#!/usr/bin/env bash

# exit if Flox is already installed
command -v flox &>/dev/null && exit

BASE_DIR=".local/share/chezmoi"

. "${BASE_DIR}/script_utils.sh"

case "$(uname -s)" in
Darwin)
  ;;
Linux)
  echo "${green}Installing Flox${reset}"
  sudo rpm -i https://flox-installers.s3.amazonaws.com/by-channel/nightly/rpm/flox.x86_64-linux.rpm
  ;;
*)
  echo "${red}Unsupported OS${reset}"
  exit 0
  ;;
esac
