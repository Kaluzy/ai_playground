# Context.md

Central place for Claude and ChatGPT to discover the most relevant threads when working in this repository. Use it as a living index that links out to notes, decisions, prompts, and active branches so neither AI needs to hunt through history to reload context.

## How to use this file
- Keep entries short and link out to the source (notes, reviews, PRs, branches).
- Update this file at the start and end of each work session so handoffs stay accurate.
- Prefer links to the smallest artifact that proves a point (specific file, section, or commit) instead of copying large text.

## What to track
- **Active branches**: names, purpose, latest status, and owner (e.g., `claude/update-claude-md-3kzKH – refining collaboration guide – status: ready for review`).
- **Open questions**: brief bullets with owners and target answer source.
- **Decisions**: one-line decision + link to the supporting note/PR/review entry.
- **Key files**: pointers to canonical docs (e.g., `CENTRALIZED_AI_WORKSPACE.md`, `CLAUDE.MD`, relevant `notes/YYYY-MM-DD-*.md`).
- **Experiments in flight**: goal, current blocking issue, and test status.

## Suggested layout (edit as needed)
1. **Snapshot** – Date, who last edited, and the branch in focus.
2. **State**
   - Active branches
   - Latest tests/run results (if any)
   - Open questions / risks
3. **Links** – Notes, decisions, PRs, prompts, and scratchpads.
4. **Next handoff** – Checklist for the next AI (what to do next, where to look, any pending approvals).

## Hygiene tips
- Keep the file tight; archive stale items to dated notes in `notes/` and replace them with a link.
- When closing a branch, move its summary to `reviews/` or `notes/` and mark it done here.
- Use consistent dates (`YYYY-MM-DD`) and keep bullets action-oriented for quick scanning.
