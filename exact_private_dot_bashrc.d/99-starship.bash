#!/usr/bin/env bash

if command -v starship &>/dev/null; then
  # shellcheck disable=SC1090
  source <(starship init bash)
  # shellcheck disable=SC1090
  source <(starship completions bash)
fi
