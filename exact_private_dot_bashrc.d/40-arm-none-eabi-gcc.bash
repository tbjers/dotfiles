#!/usr/bin/env bash

ARM_VERSION="gcc-arm-none-eabi-10-2020-q4-major"

if [ -d "${HOME}/git/Adafruit/${ARM_VERSION}" ]; then
  PATH="${HOME}/git/Adafruit/${ARM_VERSION}/bin:${PATH}"
fi
