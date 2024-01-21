#!/usr/bin/env bash

BASE_DIR=".local/share/chezmoi"

. "${BASE_DIR}/script_utils.sh"

echo "${green}Running source-state.pre scripts${reset}"

# User specific aliases and functions
if [ -d "${BASE_DIR}/.hook-scripts/pre-source-state" ]; then
	for rc in "${BASE_DIR}/.hook-scripts/pre-source-state/"*; do
		if [ -f "$rc" ]; then
			bash "$rc"
		fi
	done
fi
