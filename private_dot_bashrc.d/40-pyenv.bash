#!/usr/bin/env bash

if [ -f "${HOME}/.pyenv/bin/pyenv" ]; then
	export PYENV_ROOT="$HOME/.pyenv"
	PATH="$PYENV_ROOT/bin:$PATH"
fi

if command -v pyenv &>/dev/null; then
	source <(pyenv init -)
	source <(pyenv virtualenv-init -)
fi
