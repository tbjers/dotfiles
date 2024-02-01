#!/usr/bin/env bash

if command -v nvim &>/dev/null; then
  export EDITOR=nvim
  export VISUAL=nvim
  alias vim=nvim
  complete -F _complete_alias vim
fi
