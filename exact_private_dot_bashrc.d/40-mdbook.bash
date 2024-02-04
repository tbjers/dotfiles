#!/usr/bin/env bash

if command -v mdbook &>/dev/null; then
  # shellcheck disable=SC1090
  source <(mdbook completions bash)
fi
