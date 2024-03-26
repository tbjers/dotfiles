#!/usr/bin/env bash

if [ "${EDITOR_TERMINAL}" != "warpterminal" ]; then
  if command -v zoxide &>/dev/null; then
    # shellcheck disable=SC1090
    source <(zoxide init bash)
  fi
fi
