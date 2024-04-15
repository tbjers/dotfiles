#!/usr/bin/env bash
# -*-mode:bash-*- vim:ft=bash
if command -v bat &>/dev/null; then
  alias cat=bat
  complete -F _complete_alias cat
fi
