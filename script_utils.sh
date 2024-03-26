#!/usr/bin/env bash

# exit on error
set -Eeuo pipefail

# Set secure permissions on created directories and files
umask 077

# shellcheck disable=SC2034
red=$(tput setaf 1)
# shellcheck disable=SC2034
green=$(tput setaf 2)
# shellcheck disable=SC2034
reset=$(tput sgr0)

verlte() {
  printf '%s\n%s' "$1" "$2" | sort -C -V
}

verlt() {
  ! verlte "$2" "$1"
}

join_by() {
  local IFS="$1"
  shift
  echo "$*"
}

osid() {
  if [ -f /etc/os-release ]; then
    # shellcheck disable=SC1091
    source /etc/os-release
    join_by '-' "${ID}" "${VARIANT_ID}"
  else
    uname -s
  fi
}
