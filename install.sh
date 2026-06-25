#!/bin/bash

set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
wallpaper_set="${KITANA_WALLPAPER_SET:-originals}"

"$repo_dir/scripts/use-wallpaper-set" "$wallpaper_set"
