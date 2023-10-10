#!/usr/bin/env bash

if command -v git &>/dev/null; then
  alias g=git
  alias nah="git reset --hard; git clean -df;"
fi
