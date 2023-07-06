#!/usr/bin/env bash

if command -v starship &>/dev/null; then
    source <(starship init bash)
    source <(starship completions bash)
fi
