#!/usr/bin/env bash
# -*-mode:bash-*- vim:ft=bash

if command -v zellij &>/dev/null; then
  # shellcheck disable=SC1090
  source <(zellij setup --generate-completion bash)
  if [ -z "${EDITOR_TERMINAL}" ]; then
    # shellcheck disable=SC1090
    source <(zellij setup --generate-auto-start bash)
  fi

  if [ -z "${EDITOR_TERMINAL}" ]; then
    zellij_tab_name_update() {
      if [[ -n $ZELLIJ ]]; then
        tab_name=''
        if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
          tab_name+=$(basename "$(git rev-parse --show-toplevel)")/
          tab_name+=$(git rev-parse --show-prefix)
          tab_name=${tab_name%/}
        else
          tab_name=$PWD
          if [[ ${tab_name} == "${HOME}" ]]; then
            tab_name="~"
          else
            tab_name=${tab_name##*/}
          fi
        fi
        command nohup zellij action rename-tab "${tab_name}" >/dev/null 2>&1
      fi
    }

    PROMPT_COMMAND="${PROMPT_COMMAND}; zellij_tab_name_update"
  fi
fi
