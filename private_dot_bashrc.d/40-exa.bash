#!/usr/bin/env bash

if command -v exa &> /dev/null; then
  export EXA_COLORS="di=1;34"
  export EXA_ICON_SPACING=1
  alias exa="exa --color=automatic --group-directories-first"
  alias ls=exa
  alias ll="exa --long --icons --git"
  alias la="exa --all"
  alias lla="exa --long --all --icons --git"
fi
