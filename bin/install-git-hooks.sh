#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

mkdir -p .git/hooks
for hook in githooks/*; do
  name="$(basename "$hook")"
  cp "$hook" ".git/hooks/$name"
  chmod +x ".git/hooks/$name"
done

echo "Installed hooks: $(ls githooks | tr '\n' ' ')"
