#!/usr/bin/env bash

if [ -f "${HOME}/.pyenv/bin/pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  PATH="$PYENV_ROOT/bin:$PATH"
fi

if command -v pyenv &>/dev/null; then
  # shellcheck disable=SC1090
  source <(pyenv init -)
  if pyenv commands | grep -xq "virtualenv-init"; then
    # shellcheck disable=SC1090
    source <(pyenv virtualenv-init -)
  fi
fi
