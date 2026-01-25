#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

PYTHON_BIN="${PYTHON_BIN:-python3}"
if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
  echo "setup-repo: cannot find python3; set PYTHON_BIN to your Python 3 executable" >&2
  exit 1
fi

# Python tooling
"$PYTHON_BIN" -m venv .venv
"$ROOT/.venv/bin/pip" install --upgrade pip
"$ROOT/.venv/bin/pip" install mdformat==0.7.18

# Git hooks
# Git hooks
mkdir -p .git/hooks
for hook in "$ROOT"/githooks/*; do
  name="$(basename "$hook")"
  cp "$hook" ".git/hooks/$name"
  chmod +x ".git/hooks/$name"
done

echo "Setup complete."