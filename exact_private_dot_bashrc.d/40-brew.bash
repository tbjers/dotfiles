#!/usr/bin/env bash

# Adjust how often this is run with HOMEBREW_AUTO_UPDATE_SECS or disable with
# HOMEBREW_NO_AUTO_UPDATE. Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).

if command -v brew &>/dev/null; then
  export HOMEBREW_AUTO_UPDATE_SECS=900
  export HOMEBREW_NO_ENV_HINTS=1
  PATH="${HOMEBREW_PREFIX}/bin:${PATH}"
fi
