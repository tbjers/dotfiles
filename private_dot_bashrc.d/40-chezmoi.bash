#!/usr/bin/env bash

if command -v chezmoi &>/dev/null; then
    source <(chezmoi completion bash)
    alias cz=chezmoi
    alias cgz="chezmoi git --"
    complete -F _complete_alias cz
    complete -F _complete_alias czg
fi
