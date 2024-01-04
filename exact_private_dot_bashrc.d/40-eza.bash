#!/usr/bin/env bash

if command -v eza &>/dev/null; then
  export EZA_COLORS="di=1;34"
  export EZA_ICON_SPACING=1
  alias eza="eza --color=automatic --group-directories-first"
  alias ls=eza
  alias ll="eza --long --icons --git"
  alias la="eza --all"
  alias lla="eza --long --all --icons --git"
fi
