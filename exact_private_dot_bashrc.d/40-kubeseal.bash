#!/usr/bin/env bash

if command -v kubeseal &>/dev/null; then
  export SEALED_SECRETS_CONTROLLER_NAMESPACE=sealed-secrets
fi
