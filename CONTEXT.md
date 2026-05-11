A collection of agent skills (slash commands and behaviors) packaged for pi-coding-agent. Skills are organized into buckets and consumed by per-repo configuration emitted by `/skill:setup-matt-pocock-skills`.

The promoted skills assume each target repository can document:

- Issue tracker workflow in `docs/agents/issue-tracker.md`
- Triage label vocabulary in `docs/agents/triage-labels.md`
- Domain documentation layout in `docs/agents/domain.md`

Fork-specific pi files:

- `package.json` declares the curated `pi.skills` manifest.
- `AGENTS.md` is the pi-coding-agent repository instruction file.
- `scripts/link-skills.sh` links skills into `~/.pi/agent/skills` for local development.
- `scripts/sync-upstream.sh` and `.github/workflows/sync-upstream.yml` help merge updates from `mattpocock/skills`.
