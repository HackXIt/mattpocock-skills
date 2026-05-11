Skills are organized into bucket folders under `skills/`:

- `engineering/` — daily code work
- `productivity/` — daily non-code workflow tools
- `misc/` — kept around but rarely used
- `personal/` — tied to Matt's own setup, not promoted
- `in-progress/` — drafts not yet ready to ship
- `deprecated/` — no longer used

This fork packages the curated engineering and productivity skills for pi-coding-agent via `package.json`'s `pi.skills` manifest. Keep that manifest in sync with the promoted skill list in `README.md`.

Every promoted skill in `engineering/`, `productivity/`, or `misc/` must have a reference in the top-level `README.md`. Skills in `personal/`, `in-progress`, and `deprecated/` must not appear in the curated `pi.skills` manifest unless intentionally promoted.

Each skill entry in the top-level `README.md` must link the skill name to its `SKILL.md`.

Each bucket folder has a `README.md` that lists every skill in the bucket with a one-line description, with the skill name linked to its `SKILL.md`.

Prefer pi-coding-agent terminology in fork-specific docs:

- `AGENTS.md` for agent instructions
- `~/.pi/agent/skills` for manually linked global skills
- `pi install git:git@github.com:HackXIt/mattpocock-skills.git` for package installation
- `/skill:<name>` for invoking a skill explicitly
