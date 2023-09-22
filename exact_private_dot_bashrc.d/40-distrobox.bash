#!/usr/bin/env bash

if command -v distrobox &>/dev/null; then
	alias db=distrobox
	alias dbe='distrobox enter'
	complete -F _complete_alias db
	complete -F _complete_alias dbe
fi
