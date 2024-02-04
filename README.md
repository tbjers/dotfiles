# dotfiles

[![security](https://github.com/tbjers/dotfiles/actions/workflows/security.yml/badge.svg)](https://github.com/tbjers/dotfiles/actions/workflows/security.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)

These dotfiles can be installed with a one-line shell command:

```shell
BINDIR="${HOME}/.local/bin" TAG="latest" sh \
  -c "$(curl -fsLS get.chezmoi.io)" -- init --apply tbjers
```

Or if you have `wget`:

```shell
BINDIR="${HOME}/.local/bin" TAG="latest" sh \
  -c "$(wget -qO- get.chezmoi.io)" -- init --apply tbjers
```

Or with PowerShell:

```powershell
(irm -useb https://get.chezmoi.io/ps1) | powershell -c - init --apply tbjers
```
