#!/usr/bin/env bash

if command -v cobra-cli &>/dev/null; then
	source <(cobra-cli completion bash)
fi
