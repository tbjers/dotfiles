#!/usr/bin/env bash

if command -v flux &>/dev/null; then
    source <(flux completion bash)
fi
