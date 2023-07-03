#!/usr/bin/env bash

if command -v kubectl &>/dev/null; then
    source <(kubectl completion bash)
fi
