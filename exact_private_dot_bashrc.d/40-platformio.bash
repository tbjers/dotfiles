#!/usr/bin/env bash

if [ -d "${HOME}/.platformio/penv/bin" ]; then
  PATH="${HOME}/.platformio/penv/bin:${PATH}"
  eval "$(_PIO_COMPLETE=bash_source pio)"
fi
