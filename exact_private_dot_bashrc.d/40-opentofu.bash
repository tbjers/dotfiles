#!/usr/bin/env bash

if command -v tofu &>/dev/null; then
  alias tf=tofu
  alias terraform=tofu
  complete -C "$(which tofu)" tofu terraform
  complete -C "$(which tofu)" tofu tf
fi
