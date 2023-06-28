#!/usr/bin/env bash

if command -v op &>/dev/null; then
  source <(op completion bash)
fi
