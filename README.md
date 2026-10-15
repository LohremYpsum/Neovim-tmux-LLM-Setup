# dotfiles

A terminal coding setup for macOS: Ghostty + tmux + Neovim (LazyVim) + Claude Code.

## Installation

```sh
git clone https://github.com/LohremYpsum/dotfiles.git ~/dotfiles
~/dotfiles/install.sh
```

`install.sh` installs the packages from the `Brewfile` and creates these symlinks:

| Repo                     | Target                                                                |
|--------------------------|-----------------------------------------------------------------------|
| `nvim/`                  | `~/.config/nvim`                                                      |
| `tmux/tmux.conf`         | `~/.tmux.conf`                                                        |
| `ghostty/config.ghostty` | `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty` |
| `bin/dev`                | `~/.local/bin/dev`                                                    |

Existing files are moved to `*.backup-<timestamp>` first. The script is idempotent, so it is safe to run again.
`~/.local/bin` must be on your `PATH` for `dev` to be found.

## Usage

- `dev [dir]` – one tmux session per project: Neovim on the left (65 %), Claude Code on the right (35 %)
- `Prefix + a` – open the same layout as a new window in the current session
- `Ctrl+h/j/k/l` – move between Neovim splits and tmux panes
- `Option+d` / `Option+Shift+d` – split pane left/right / top/bottom (Ghostty keybind)
- `Shift+←/→` – previous/next window, `Shift+↓` – new window
- `Prefix + r` – reload the tmux config

## Reference

A searchable cheat sheet for tmux, Neovim and LazyVim (in German): [`docs/referenz.html`](docs/referenz.html).
Open it locally with `open ~/dotfiles/docs/referenz.html`.
