# dotfiles

Personal dotfiles by [Frederik Kvartborg Albertsen](https://github.com/quartercastle).

## Contents

| File | Purpose |
|---|---|
| `.zshrc` | Zsh config with custom prompt (git status, AWS profile) |
| `.gitconfig` | Git aliases, colors, and user config |
| `.tmux.conf` | Tmux with true color support, status bar disabled |
| `.editorconfig` | Cross-editor formatting rules |
| `.quartercastle/aliases` | Shell aliases (`gh`, `bat`, etc.) |
| `.quartercastle/exports` | PATH, environment variables, `EDITOR` |
| `.quartercastle/bin/opencode` | Run opencode in a sandboxed container environment |
| `.quartercastle/brew.deps` | Homebrew package list |
| `.quartercastle/apt.deps` | APT package list |
| `.config/ghostty/config.ghostty` | Ghostty terminal config (Menlo, One Half Dark) |
| `.config/opencode/opencode.json` | Opencode AI tool config |

## Install

```bash
./bootstrap
```

Copies all files to your home directory with `rsync`, switches shell to Zsh, and sources the config.

Use `-f` or `--force` to skip the confirmation prompt.

## Docker

```bash
docker build -t quartercastle .
docker run -it --rm quartercastle
```

Builds an Ubuntu-based image with the dotfiles installed, useful for testing.

## License

MIT
