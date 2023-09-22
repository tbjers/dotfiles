#!/usr/bin/env bash

if command -v atuin &>/dev/null; then
  source <(atuin init bash)
  source <(atuin gen-completions --shell bash)
fi
