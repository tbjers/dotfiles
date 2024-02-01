#!/usr/bin/env bash

if command -v eza &>/dev/null; then
  export EZA_COLORS="di=1;34"
  export EZA_ICON_SPACING=1
  alias eza="eza --color=automatic --group-directories-first"
  alias ls=eza
  alias ll="eza --long --icons --git"
  alias la="eza --all"
  alias lla="eza --long --all --icons --git"
  complete -F _complete_alias ls
  complete -F _complete_alias ll
  complete -F _complete_alias la
  complete -F _complete_alias lla
fi
