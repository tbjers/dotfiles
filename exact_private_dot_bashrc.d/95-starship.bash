#!/usr/bin/env bash

if [ "${EDITOR_TERMINAL}" != "WarpTerminal" ]; then
  if command -v starship &>/dev/null; then
    # shellcheck disable=SC1090
    source <(starship init bash)
    # shellcheck disable=SC1090
    source <(starship completions bash)
  fi
fi
