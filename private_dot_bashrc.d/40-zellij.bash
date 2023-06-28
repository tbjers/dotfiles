#!/usr/bin/env bash

if command -v zellij &>/dev/null; then
	eval "$(zellij setup --generate-completion bash)"
fi
