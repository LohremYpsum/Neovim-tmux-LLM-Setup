# dotfiles

Neovim (LazyVim) + tmux + Claude Code als Coding-Setup für macOS.

## Installation

```sh
git clone https://github.com/LohremYpsum/dotfiles.git ~/dotfiles
~/dotfiles/install.sh
```

`install.sh` installiert die Pakete aus dem `Brewfile` und verlinkt:

| Repo             | Ziel                 |
|------------------|----------------------|
| `nvim/`          | `~/.config/nvim`     |
| `tmux/tmux.conf` | `~/.tmux.conf`       |
| `bin/dev`        | `~/.local/bin/dev`   |

Bereits vorhandene Dateien werden als `*.backup-<datum>` gesichert.

## Bedienung

- `dev [verzeichnis]` – tmux-Session pro Projekt: Neovim links (65 %), Claude Code rechts (35 %)
- `Prefix + a` – dasselbe Layout als neues Fenster in der laufenden Session
- `Ctrl+h/j/k/l` – zwischen Neovim-Splits und tmux-Panes wechseln
- `Shift+←/→` – Tab wechseln, `Shift+↓` – neuer Tab
- `Prefix + r` – tmux-Config neu laden
