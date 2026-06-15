## Robot Ops guidance

For Robot Ops internal development, cross-check this repo against the surrounding codebase and adjacent docs before changing behavior. Treat Canopy as the org-wide source of record for repo notes and decisions, not as a substitute for verifying the implementation in front of you. This repo is documented at `vault/projects/homebrew-tap/`.

The vault slug is the repo name lowercased with underscores replaced by hyphens (e.g. `robot_agent` → `robot-agent`, `web_app` → `web-app`).

### Cross-check the codebase before…

* Making a packaging or release decision — check `vault/decisions/` and `vault/projects/homebrew-tap/decisions/`
* Changing formula behavior, install steps, or config schema — read the relevant project pages and verify the implementation stays safe and consistent
* Investigating a regression that might already be known — compare the current code, docs, and any incident notes before changing anything

### Leave a raw note when…

When something notable happens — a decision is made, a public interface changes, a non-obvious bug is fixed, a constraint is discovered — create a file at:

`vault/_raw/homebrew-tap-YYYY-MM-DD-<short-slug>.md`

in the `RobotOpsInc/canopy` repo and open a PR against `main`. Keep it factual: what changed, why, and any cross-repo implications. The ingest workflow handles the rest. Do not write vault pages directly.
