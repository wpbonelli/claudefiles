#!/usr/bin/env bash
# Regenerate data/ with steerage, then render the skill examples.
# Arguments are steerage steps to run, all by default. STEERAGE overrides where
# steerage comes from, such as a local checkout.
set -euo pipefail
cd "$(dirname "$0")"
export STEERAGE_SINCE=2026-05-24 STEERAGE_SKIP="$PWD"
uvx --refresh-package steerage --from "${STEERAGE:-git+https://github.com/wpbonelli/steerage}" steerage "$@"
uv run python scripts/build_examples.py
