#!/usr/bin/env bash

if command -v kubectl &>/dev/null; then
  # shellcheck disable=SC1090
  source <(kubectl completion bash)
fi
