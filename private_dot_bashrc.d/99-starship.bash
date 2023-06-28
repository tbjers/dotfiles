#!/usr/bin/env bash

if command -v starship &> /dev/null; then
  eval "$(starship init bash)"
  eval "$(starship completions bash)"
fi
