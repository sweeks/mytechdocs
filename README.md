# My Tech Docs

This repo collects documentation on the technology I use day to day—devices, apps,
services, and the way I configure and operate them.

## Formatting

- Python 3.11+ and `mdformat~=0.7.18` (matches `multiviewer`)
- Setup: `python3 -m venv .venv && .venv/bin/pip install mdformat==0.7.18`
- Shortcut: `bin/setup-repo.sh` (creates venv, installs mdformat)
- Format: `.venv/bin/mdformat --wrap 90 *.md` (or run `bin/validate-repo.sh`)
- Pre-commit hook runs `bin/validate-repo.sh`; if it complains about missing tools, set up
  the venv first.

## Codex

- Git: user handles git actions. Never commit, push, or change git state without explicit
  instruction.

## Structure

- Media: prefer dash-separated filenames; place topic docs in dedicated subfolders with a
  `README.md`.
- Images: use relative links within the subfolder (e.g., `![caption](./photo.jpeg)`) so
  GitHub renders them; avoid spaces in filenames.
- Root-level markdown files for topics (networking, media, automation, backups, etc.)
- Start with `tech-inventory.md` as the entry point; add more topic files alongside it

## License

MIT License (see `LICENSE`).
