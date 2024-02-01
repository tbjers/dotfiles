#!/usr/bin/env bash

if command -v terraform &>/dev/null; then
  alias tf=terraform
  complete -C "$(which terraform)" terraform tf
fi
