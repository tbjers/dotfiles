#!/usr/bin/env bash

if command -v argocd &>/dev/null; then
  source <(argocd completion bash)
fi
