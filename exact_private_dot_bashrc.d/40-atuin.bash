#!/usr/bin/env bash

if command -v atuin &>/dev/null; then
  # shellcheck disable=SC1090
  source <(atuin init bash)
  # shellcheck disable=SC1090
  source <(atuin gen-completions --shell bash)
fi
