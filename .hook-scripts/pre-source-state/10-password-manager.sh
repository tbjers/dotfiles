#!/usr/bin/env bash

# exit if 1Password is already installed
command -v op &>/dev/null && exit

BASE_DIR="${CHEZMOI_SOURCE_DIR}"

# shellcheck disable=SC1091
source "${BASE_DIR}/script_utils.sh"

# shellcheck disable=SC2154
case "$(osid)" in
"fedora-silverblue")
  # shellcheck disable=SC2154
  echo "${green}Installing 1Password on Silverblue${reset}"
  sudo wget https://downloads.1password.com/linux/keys/1password.asc \
    -O /etc/pki/rpm-gpg/1password.asc &&
    sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=file:///etc/pki/rpm-gpg/1password.asc" > /etc/yum.repos.d/1password.repo' &&
    sudo rpm-ostree -q install 1password 1password-cli
  ;;
"fedora-workstation")
  # shellcheck disable=SC2154
  echo "${green}Installing 1Password${reset}"
  sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
  sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
  sudo dnf install -y -q 1password 1password-cli
  ;;
"ubuntu")
  if command -v distrobox-host-exec &>/dev/null; then
    if [ ! -f "/usr/local/bin/op" ]; then
      sudo ln -s "$(which distrobox-host-exec)" "/usr/local/bin/op"
    fi
  else
    # shellcheck disable=SC2154
    echo "${green}Installing 1Password${reset}"
    curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
    echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
    sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
    curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
    sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
    curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
    sudo apt update && sudo apt install -y -q 1password-cli
  fi
  ;;
"wolfi")
  if command -v distrobox-host-exec &>/dev/null; then
    if [ ! -f "/usr/local/bin/op" ]; then
      sudo ln -s "$(which distrobox-host-exec)" "/usr/local/bin/op"
    fi
  fi
  ;;
*)
  # shellcheck disable=SC2154
  echo "${red}Unsupported OS $(osid)${reset}"
  exit 0
  ;;
esac
