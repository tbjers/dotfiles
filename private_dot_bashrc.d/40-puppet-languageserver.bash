#!/usr/bin/env bash

app_dir="${HOME}/.local/share/puppet-languageserver"

if [ -d "${app_dir}" ]; then
	PATH="${app_dir}:${PATH}"
fi
