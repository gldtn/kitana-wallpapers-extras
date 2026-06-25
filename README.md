# kitana-wallpapers-extras

Optional wallpaper pack for Kitana.

Install with:

```bash
bash install.sh
```

Kitana can install this pack during setup with:

```bash
KITANA_EXTRAS=walls bash ~/.local/share/kitana/install.sh
```

Generate local themed sets during install with:

```bash
KITANA_GENERATE_WALLPAPERS=1 bash install.sh
KITANA_EXTRAS=walls KITANA_GENERATE_WALLPAPERS=1 bash ~/.local/share/kitana/install.sh
```

The installer symlinks `wallpapers/originals` into `~/.config/kitana/wallpapers`.

## Themed wallpapers

Generate themed copies with `lutgen`:

```bash
scripts/lutgen-wallpapers
```

The canonical unthemed source set lives in:

```text
wallpapers/originals/
```

The generator preserves `wallpapers/originals` and writes local themed sets under:

```text
wallpapers/<theme>/
```

Generated themed sets are ignored by Git so the repository stays small enough for Kitana's opt-in setup. Regenerate them locally after cloning when you want pre-rendered themed wallpapers.

Useful options:

```bash
scripts/lutgen-wallpapers --theme cyberdream
scripts/lutgen-wallpapers --theme rose-pine --force
scripts/lutgen-wallpapers --dry-run
scripts/lutgen-wallpapers --list-themes
```

Cyberdream is provided as a repo-local custom lutgen palette in `palettes/cyberdream`.

Expose a set to Kitana's flat dashboard wallpaper directory:

```bash
scripts/use-wallpaper-set originals
scripts/use-wallpaper-set cyberdream
```

Install a specific set with:

```bash
KITANA_WALLPAPER_SET=rose-pine bash install.sh
KITANA_GENERATE_WALLPAPERS=1 KITANA_WALLPAPER_SET=rose-pine bash install.sh
```

When this repository exists at `~/.local/share/kitana-wallpapers-extras`, `kitana-theme` switches to the matching wallpaper set and reapplies the themed version of the current wallpaper filename when it exists.
