#!/usr/bin/env bash

command -v sensors &>/dev/null || exit 1

sensors k10temp-pci-00c3 -A -j | jq -r '.[].Tctl.temp1_input | round' -
