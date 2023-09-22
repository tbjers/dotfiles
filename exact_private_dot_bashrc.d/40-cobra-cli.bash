#!/usr/bin/env bash

if command -v cobra-cli &>/dev/null; then
	# shellcheck disable=SC1090
	source <(cobra-cli completion bash)
fi
