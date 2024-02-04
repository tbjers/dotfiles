#!/usr/bin/env bash
# -*-mode:bash-*- vim:ft=bash

if command -v zellij &>/dev/null; then
  # shellcheck disable=SC1090
  source <(zellij setup --generate-completion bash)
  # shellcheck disable=SC1090
  source <(zellij setup --generate-auto-start bash)
fi
