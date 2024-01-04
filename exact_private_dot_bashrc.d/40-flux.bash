#!/usr/bin/env bash

if command -v flux &>/dev/null; then
  # shellcheck disable=SC1090
  source <(flux completion bash)
fi
