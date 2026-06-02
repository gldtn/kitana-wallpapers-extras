#!/bin/bash

set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
wallpaper_dir="${KITANA_WALLPAPER_DIR:-$HOME/.config/kitana/wallpapers}"

mkdir -p "$wallpaper_dir"

for wallpaper in "$repo_dir"/wallpapers/*; do
  [ -e "$wallpaper" ] || continue
  target="$wallpaper_dir/$(basename "$wallpaper")"
  if [ ! -e "$target" ] || [ -L "$target" ]; then
    ln -sfn "$wallpaper" "$target"
  else
    echo "Keeping existing wallpaper: $target"
  fi
done
