#!/bin/bash

set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
wallpaper_set="${KITANA_WALLPAPER_SET:-originals}"
generate_wallpapers="${KITANA_GENERATE_WALLPAPERS:-0}"

enabled() {
  case "${1,,}" in
    1|true|yes|on)
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

if enabled "$generate_wallpapers"; then
  "$repo_dir/scripts/lutgen-wallpapers"
fi

"$repo_dir/scripts/use-wallpaper-set" "$wallpaper_set"
