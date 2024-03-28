#!/usr/bin/env bash

if [ -d "${HOME}/.local/share/go" ]; then
  PATH="${HOME}/.local/share/go/bin:${PATH}"
fi

if command -v go &>/dev/null; then
  PATH="${HOME}/go/bin:${PATH}"
fi
