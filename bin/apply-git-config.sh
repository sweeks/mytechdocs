#!/usr/bin/env bash
set -euo pipefail
# Helper to apply local git settings for this repo.
# Run manually after cloning if you want the convenience defaults.

# Use a no-op editor so blank commit messages won't open an editor.
git config core.editor true
