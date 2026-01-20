# GitHub Notes

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
