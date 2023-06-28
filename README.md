# dotfiles

These dotfiles can be installed with a one-line shell command:

```shell
sh -c "$(curl -fsLS up.bjers.org)"
```

Or if you have `wget`:

```shell
sh -c "$(wget -qO- up.bjers.org)"
```

Or with PowerShell:

```powershell
(irm -useb https://get.chezmoi.io/ps1) | powershell -c -
```
