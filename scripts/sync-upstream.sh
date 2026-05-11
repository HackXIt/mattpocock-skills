#!/usr/bin/env bash
set -euo pipefail

# Merge the latest mattpocock/skills main branch into this pi-coding-agent fork.
# Run from anywhere inside the clone:
#   scripts/sync-upstream.sh
# Resolve merge conflicts if Git reports any, then commit and push.

REPO="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO"

if ! git remote get-url upstream >/dev/null 2>&1; then
  git remote add upstream https://github.com/mattpocock/skills.git
fi

git fetch upstream --prune

git merge --no-edit upstream/main

cat <<'MSG'

Upstream merge complete.
Review fork-specific files before pushing:
  - AGENTS.md
  - package.json
  - scripts/link-skills.sh
  - scripts/sync-upstream.sh
  - .github/workflows/sync-upstream.yml

Then run:
  git push origin HEAD
  pi update git:git@github.com:HackXIt/mattpocock-skills.git
MSG
