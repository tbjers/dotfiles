#!/usr/bin/env bash

if command -v chezmoi &>/dev/null; then
  # shellcheck disable=SC1090
  source <(chezmoi completion bash)
  alias cz=chezmoi
  alias czg="chezmoi git --"
  complete -F _complete_alias cz
  complete -F _complete_alias czg
fi
