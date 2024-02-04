#!/usr/bin/env bash

BASE_DIR=".local/share/chezmoi"

# shellcheck disable=SC1091
source "${BASE_DIR}/script_utils.sh"

# shellcheck disable=SC2154
echo "${green}Running source-state.pre scripts${reset}"

# User specific aliases and functions
if [ -d "${BASE_DIR}/.hook-scripts/pre-source-state" ]; then
  for rc in "${BASE_DIR}/.hook-scripts/pre-source-state/"*.sh; do
    if [ -f "$rc" ]; then
      bash "$rc"
    fi
  done
fi
