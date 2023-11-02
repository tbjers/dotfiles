#!/usr/bin/env bash

if [ -d "${HOME}/.krew/bin" ]; then
    PATH="${HOME}/.krew/bin:${PATH}"
fi
