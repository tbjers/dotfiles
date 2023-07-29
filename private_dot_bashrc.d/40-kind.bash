#!/usr/bin/env bash

if command -v kind &>/dev/null; then
	# shellcheck disable=SC1090
	source <(kind completion bash)
fi
