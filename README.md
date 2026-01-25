# My Tech Docs

This repo collects documentation on the technology I use day to day—devices, apps,
services, and the way I configure and operate them.

## Formatting

- Python 3.11+ and `mdformat~=0.7.18` (matches `multiviewer`)
- Setup: `python3 -m venv .venv && .venv/bin/pip install mdformat==0.7.18`
- Shortcut: `bin/setup-repo.sh` (one script: creates venv, installs mdformat, installs git
  hooks)
- Format: `.venv/bin/mdformat --wrap 90 *.md` (or run `bin/validate-repo.sh`)
- Pre-commit hook runs `bin/validate-repo.sh`; if it complains about missing tools, set up
  the venv first.

## Structure

- Media: prefer dash-separated filenames; place topic docs in dedicated subfolders with a
  `README.md`.
- Images: use relative links within the subfolder (e.g., `![caption](./photo.jpeg)`) so
  GitHub renders them; avoid spaces in filenames.
- Root-level markdown files for topics (networking, media, automation, backups, etc.)
- Start with `tech-inventory.md` as the entry point; add more topic files alongside it

## GitHub

- Repo: `sweeks/mytechdocs` (public) created via
  `gh repo create mytechdocs --public --source . --remote origin --push` after
  authenticating with SSH.
- Remote: `git@github.com:sweeks/mytechdocs.git`; pushes/pulls use existing SSH keys.
- GH CLI setup: `brew install gh` then `gh auth login` (GitHub.com → SSH → login with
  browser; reuse existing keys).
- Hooks: `.git/hooks/pre-commit` runs `bin/validate-repo.sh` (mdformat) and fails if it
  modifies staged files.
- Tooling: run `bin/setup-repo.sh` once per machine to install mdformat into `.venv`.
  Validator/Hook expects `.venv/bin/mdformat` to exist.
- Typical workflow: edit markdown, `bin/validate-repo.sh`, `git status`,
  `git commit -am "..."`, `git push`.

## Codex

- Codex panel is set to "Agent (full access)" to avoid write prompts while working on this
  repo.
- Full access removes the prior approvals required for file writes; use with care when
  making changes.
- If prompts return, check the mode selector at the bottom of the Codex panel and switch
  back to "Agent (full access)".

## License

MIT License (see `LICENSE`).
