#!/usr/bin/env bash

if command -v kind &>/dev/null; then
    source <(kind completion bash)
fi
