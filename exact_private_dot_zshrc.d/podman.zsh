if command -v podman &>/dev/null; then
  if command -v kind &>/dev/null; then
    export KIND_EXPERIMENTAL_PROVIDER=podman
  fi
fi

# -*-mode: zsh;-*- vim:ft=zsh:
