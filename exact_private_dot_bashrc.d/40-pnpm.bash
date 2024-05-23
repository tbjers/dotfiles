#!/usr/bin/env bash

export PNPM_HOME="${HOME}/.local/share/pnpm"

case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

if command -v pnpm &>/dev/null; then
  # shellcheck disable=SC1090
  source <(pnpm completion bash)
fi
