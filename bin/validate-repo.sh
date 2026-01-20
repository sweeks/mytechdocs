#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

if [[ ! -x "$ROOT/.venv/bin/mdformat" ]]; then
  cat >&2 <<'ERR'
validate-repo: missing formatter (.venv/bin/mdformat)
Set up the venv: python -m venv .venv && .venv/bin/pip install mdformat==0.7.18
ERR
  exit 1
fi

exec "$ROOT/.venv/bin/mdformat" --wrap 90 "$ROOT"
