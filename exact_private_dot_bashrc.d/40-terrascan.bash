#!/usr/bin/env bash

if command -v terrascan &>/dev/null; then
  # shellcheck disable=SC1090
  source <(terrascan completion bash --log-level fatal)
fi
