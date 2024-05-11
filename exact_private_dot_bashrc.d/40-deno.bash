#!/usr/bin/env bash

export DENO_INSTALL="${HOME}/.deno"

case ":$PATH:" in
*":$DENO_INSTALL/bin:"*) ;;
*) export PATH="$DENO_INSTALL/bin:$PATH" ;;
esac

if command -v deno &>/dev/null; then
  # shellcheck disable=SC1090
  source <(deno completions bash)
fi
