#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

PYTHON_BIN="${PYTHON_BIN:-python3}"
if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
  echo "setup-repo: cannot find python3; set PYTHON_BIN to your Python 3 executable" >&2
  exit 1
fi

"$PYTHON_BIN" -m venv .venv
"$ROOT/.venv/bin/pip" install --upgrade pip
"$ROOT/.venv/bin/pip" install mdformat==0.7.18

echo "Setup complete. Formatter available at .venv/bin/mdformat".
