#!/usr/bin/env bash

if command -v git &> /dev/null; then
  alias g=git
  complete -F _complete_alias g
fi
