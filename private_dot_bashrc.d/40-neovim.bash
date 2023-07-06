#!/usr/bin/env bash

if command -v nvim &>/dev/null; then
    export EDITOR=nvim
    alias vim=nvim
fi
