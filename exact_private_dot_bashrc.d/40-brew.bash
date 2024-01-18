#!/usr/bin/env bash

BREW_HOME="/home/linuxbrew/.linuxbrew"

if [ -d "${BREW_HOME}/bin" ]; then
  source <("${BREW_HOME}/bin/brew" shellenv)

  if [ -d "${BREW_HOME}/etc/bash_completion.d" ]; then
    for rc in "${BREW_HOME}/etc/bash_completion.d/"*; do
      if [ -f "$rc" ]; then
        # shellcheck disable=SC1090
        source "$rc"
      fi
    done
  fi
fi
