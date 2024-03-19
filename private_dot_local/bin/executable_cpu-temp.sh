#!/usr/bin/env bash

sensors k10temp-pci-00c3 -A -j -n | jq -r '.[].Tctl.temp1_input | round' -
