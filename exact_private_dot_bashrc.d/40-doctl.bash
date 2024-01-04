#!/usr/bin/env bash

if command -v doctl &>/dev/null; then
  # shellcheck disable=SC1090
  source <(doctl completion bash)
fi
