#!/usr/bin/env bash

if command -v zellij &>/dev/null; then
	source <(zellij setup --generate-completion bash)
	source <(zellij setup --generate-auto-start bash)
fi
