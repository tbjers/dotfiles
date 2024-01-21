#!/usr/bin/env bash

if command -v rbenv &>/dev/null; then
  # shellcheck disable=SC1090
  source <(rbenv init - bash)
fi
