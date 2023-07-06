#!/usr/bin/env bash

if command -v just &>/dev/null; then
    source <(just --completions bash)
fi
