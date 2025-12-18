# Centralized AI Workspace Blueprint

This guide describes how to run ChatGPT (Codecs) and Claude side-by-side with a single, cloud-hosted Git repository as the shared source of truth. It is optimized for enterprise-style workflows where both AIs can co-create, review, and iterate without scattering notes across tools.

## Objectives
- Keep all experiments, prompts, specs, and reviews in one repo-backed knowledge base.
- Give both AIs access to the same context (files, history, issues) for consistent responses.
- Standardize workflows so contributions from either AI stay organized, auditable, and secure.
- Keep day-to-day execution lightweight so contributors can onboard quickly without ceremony.

## Recommended Repository Layout
- `docs/` for architecture notes, decisions, runbooks, and onboarding.
- `prompts/` for reusable prompt templates and model-specific guidance (ChatGPT Codecs vs Claude).
- `notes/` for research logs, experiment journals, and meeting summaries (date-prefixed files).
- `experiments/` for prototypes and POCs, each with its own README and clear inputs/outputs.
- `reviews/` for AI-to-AI and human review summaries, captured per change or per experiment.
- `workflows/` for automation scripts (linting, tests, sync jobs), CI configs, and policy-as-code.
- `CHANGELOG.md` (or `decisions/ADR-*.md`) for significant changes and architecture decisions.

## Environment Setup
- **Cloud desktop + VS Code (Codecs):** Mount the repo in your cloud desktop, enable Codecs, and share the workspace so ChatGPT can read/write files directly.
- **Claude access:** Connect Claude to the same repo via your Git remote or through the IDE’s Claude extension so it reads identical context.
- **Branch naming:** Use `ai/<who>/<topic>-<date>` (e.g., `ai/chatgpt/prompt-library-2025-02-03`) to make origin and intent explicit.
- **File ownership hints:** Add short headers to shared docs noting the primary AI/owner and purpose.
- **Workspace bootstrap:** Script a one-command setup (e.g., `./workflows/bootstrap.sh`) that installs extensions, pulls latest branches, and seeds recommended folder structure.

### Operating model (enterprise grid style)
1. **Single perimeter:** Keep the repo behind your standard IdP-backed access controls and require SSO for both AIs and humans. Enforce branch protections on `main`.
2. **Data boundaries:** Use a secrets vault and redaction helpers; prevent credentials from entering prompts by adding pre-commit secret scanning and CI policy gates.
3. **Context curation:** Maintain `docs/context-index.md` with links to the smallest file set needed for common tasks (security review, UI change, data pipeline update).
4. **Repeatable environments:** Prefer devcontainers or standardized VS Code settings so both AIs run the same toolchain versions; cache dependencies in `workflows/` scripts.
5. **Audit trail:** Require PR templates that capture summary, testing, reviewers, and links to related `notes/` or `reviews/` files.
6. **Human override:** Identify an owner for merges and escalations; keep a rotation schedule in `docs/owners.md`.

## Collaboration Workflow (ChatGPT + Claude)
1. **Plan together:** Create an issue or `docs/plans/<topic>.md` describing goals, constraints, and success criteria.
2. **Divide work:** Assign sub-tasks to ChatGPT and Claude (e.g., ChatGPT drafts code, Claude audits security or UX).
3. **Branch + PR:** Each AI works on its branch; open PRs with clear summaries and testing notes.
4. **Cross-review:** Require the other AI (and humans) to review before merge; store review notes in `reviews/`.
5. **Converge in main:** Rebase/merge after passing checks; update `CHANGELOG.md` or ADRs for major decisions.
6. **Context refresh:** After merges, both AIs pull latest to keep context aligned.

## Keeping Context Centralized
- **Single source of truth:** Avoid ad-hoc chat storage; capture decisions in `docs/` and `reviews/` and reference issue/PR IDs.
- **Prompt library:** Version prompt templates per model in `prompts/chatgpt/` and `prompts/claude/`, noting model strengths and limits.
- **Research capture:** Use date-stamped `notes/YYYY-MM-DD-<topic>.md` so both AIs can quickly recall prior findings.
- **Runbooks:** Document how to start services, run tests, and reproduce experiments in `docs/runbooks/`.
- **Context packs:** Create small index files (e.g., `docs/context/<topic>.md`) listing the minimal set of files to load for a task.

## Enterprise-Grade Considerations
- **Access control:** Use repo permissions and protected branches; store secrets in a vault, never in the repo.
- **Auditability:** Keep AI-generated changes traceable via commits, PR templates, and review logs.
- **Compliance:** Add policy checks (lint, license scanning, secret scanning) in CI; require passing checks before merge.
- **Data handling:** Redact sensitive data in prompts; maintain redaction helpers and guidelines in `docs/security.md`.
- **Availability:** For cloud desktops, script environment bootstrapping so both AIs can rehydrate quickly (dotfiles, extensions, dependencies).

## Minimal Daily Ritual
- Pull latest `main` and sync branches.
- Skim `notes/` and `reviews/` for relevant context.
- Update `notes/` with new findings; keep PRs small and frequent.
- Run automated checks before requesting cross-AI review.

## Quick Start Checklist
- [ ] Create `docs/`, `prompts/`, `notes/`, `experiments/`, `reviews/`, `workflows/` directories.
- [ ] Add PR/issue templates that require summaries, tests, and links to context files.
- [ ] Define branch and commit conventions in `docs/conventions.md`.
- [ ] Set up CI with linting, tests, secret/license scans.
- [ ] Configure both ChatGPT Codecs and Claude to the same repo and branch protection rules.

## How to Expand From Here
- Add a `context-index.md` that points to the most important files per domain.
- Introduce lightweight ADRs for non-trivial decisions.
- Create onboarding docs for each AI describing when to ask clarifying questions and where to record outcomes.
- Add automation (e.g., scheduled context refresh scripts or summarizers) to keep shared context concise.
