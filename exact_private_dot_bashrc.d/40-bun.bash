#!/usr/bin/env bash
BUN_INSTALL="${HOME}/.bun"
if [ -d "${BUN_INSTALL}" ]; then
  PATH="${BUN_INSTALL}/bin:${PATH}"
  export BUN_INSTALL
fi
