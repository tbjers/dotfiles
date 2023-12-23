#!/usr/bin/env bash

if command -v just &>/dev/null; then
  # shellcheck disable=SC1090
  source <(just --completions bash)
fi
