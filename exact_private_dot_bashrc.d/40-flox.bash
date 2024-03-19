#!/usr/bin/env bash

if command -v flox &>/dev/null; then
  alias dev='flox activate --dir=${HOME}'
  alias fa='flox activate'
fi
