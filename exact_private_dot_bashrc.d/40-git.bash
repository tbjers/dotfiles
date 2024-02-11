#!/usr/bin/env bash

if command -v git &>/dev/null; then
  alias g=git
  alias nah="git reset --hard; git clean -df;"
  # Add completion support for aliases
  complete -F _complete_alias g
fi
