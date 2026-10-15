#!/usr/bin/env bash
# Richtet die Dotfiles auf diesem Rechner ein: Homebrew-Pakete + Symlinks.
# Vorhandene Dateien werden vorher nach *.backup-<datum> verschoben.
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"

link() {
  local src="$DOTFILES/$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [[ -L "$dst" && "$(readlink "$dst")" == "$src" ]]; then
    echo "ok      $dst"
    return
  fi
  if [[ -e "$dst" || -L "$dst" ]]; then
    mv "$dst" "$dst.backup-$STAMP"
    echo "backup  $dst -> $dst.backup-$STAMP"
  fi
  ln -s "$src" "$dst"
  echo "link    $dst -> $src"
}

if command -v brew >/dev/null; then
  brew bundle --file="$DOTFILES/Brewfile"
else
  echo "Homebrew fehlt – Pakete aus dem Brewfile bitte manuell installieren."
fi

link nvim           "$HOME/.config/nvim"
link tmux/tmux.conf "$HOME/.tmux.conf"
link bin/dev        "$HOME/.local/bin/dev"

echo
echo "Fertig. ~/.local/bin muss im PATH sein, damit 'dev' gefunden wird."
