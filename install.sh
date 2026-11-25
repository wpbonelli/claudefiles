#!/usr/bin/env bash
# Symlink claude/CLAUDE.md and claude/skills/* into ~/.claude. Existing files are backed up.
set -euo pipefail
src="$(cd "$(dirname "$0")" && pwd)/claude"
dst="$HOME/.claude"
mkdir -p "$dst/skills"
link() {
  if [[ -e "$2" && ! -L "$2" ]]; then mv "$2" "$2.bak.$(date +%Y%m%d%H%M%S)"; echo "backed up $2"; fi
  ln -sfn "$1" "$2"; echo "$2 -> $1"
}
link "$src/CLAUDE.md" "$dst/CLAUDE.md"
for d in "$src"/skills/*/; do
  link "${d%/}" "$dst/skills/$(basename "$d")"
done
