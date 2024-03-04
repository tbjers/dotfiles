#!/usr/bin/env bash

if command -v tofu &>/dev/null; then
  alias tf=tofu
  complete -C "$(which tofu)" tofu tf
fi
