#!/usr/bin/env bash

if command -v infracost &>/dev/null; then
  # shellcheck disable=SC1090
  source <(infracost completion --shell bash --log-level fatal)
fi
