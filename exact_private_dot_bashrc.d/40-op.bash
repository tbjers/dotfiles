#!/usr/bin/env bash

if command -v op &>/dev/null; then
  # shellcheck disable=SC1090
  source <(op completion bash)
  if [ -f "${HOME}/.config/op/plugins.sh" ]; then
    # shellcheck disable=SC1091
    source "${HOME}/.config/op/plugins.sh"
  fi
fi
