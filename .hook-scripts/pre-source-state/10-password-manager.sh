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
"wolfi")
  if command -v distrobox-host-exec &>/dev/null; then
    if [ ! -f "/usr/local/bin/op" ]; then
      sudo ln -s "$(which distrobox-host-exec)" "/usr/local/bin/op"
    fi
  fi
  ;;
*)
  # shellcheck disable=SC2154
  echo "${red}Unsupported OS${reset}"
  exit 0
  ;;
esac
