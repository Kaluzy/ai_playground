# CLAUDE.MD

## Project Overview

This is **ai_playground** - a repository for experimenting with AI development, testing AI-assisted coding workflows, and exploring various AI tools and frameworks. Treat this doc as Claude's house rules and quick-start so Claude and ChatGPT (Codecs) can co-create without stepping on each other.

## Purpose

This repository serves as a sandbox environment for:
- Testing AI code generation capabilities
- Experimenting with different AI models and frameworks
- Prototyping AI-powered applications
- Learning and documenting AI development patterns
- Exploring prompt engineering techniques

## Project Structure

```
ai_playground/
├── CLAUDE.MD          # This file - guidance for Claude AI
└── .git/              # Git version control
```

## Development Guidelines

### Code Style
- Write clean, readable, and well-documented code
- Use meaningful variable and function names
- Include comments for complex logic
- Follow language-specific best practices
- Prefer small, composable functions; highlight assumptions in comments or docstrings.
- Default to secure and observable patterns (input validation, logging of decisions, clear error messages without leaking secrets).

### Git Workflow
- Work on feature branches following the pattern: `claude/feature-name-{sessionId}`. When pair-building with ChatGPT, suffix branches with the pairing (e.g., `claude/chatgpt-context-refresh-2025-12-18`).
- Write clear, descriptive commit messages
- Keep commits focused and atomic
- Push changes to the designated branch
- Use PR templates and include testing notes; capture links to related `notes/` or `reviews/` entries for auditability.
- When a branch crosses more than one day, prepend a short status note in the PR ("Remaining: tighten tests for X; Pending review: security").

### Testing Philosophy
- Write tests for critical functionality
- Include examples and usage documentation
- Test edge cases and error handling
- Add minimal smoke checks for prototypes so ChatGPT and Claude have fast safety rails when iterating.

### Collaboration Rhythm (Claude + ChatGPT)
- **Plan together:** Start work with a short plan in `docs/plans/` or within the PR description so both AIs share intent.
- **Divide & review:** Claude can focus on security, resilience, and clarity; ChatGPT can focus on scaffolding or refactors. Review each other's work before merge.
- **Context discipline:** Keep context small—link to the smallest set of files (or `docs/context-index.md`) instead of dumping the whole repo.
- **Decisions:** Record notable choices or trade-offs in `decisions/` or `notes/` with dates and owners.
- **Handoff script (fast):**
  - Sender posts: purpose, touched files, open questions, test status, and where to look next.
  - Receiver replies with a one-paragraph readback + checklist of next actions.

## AI Collaboration Notes

### What Claude Should Know
- This is an experimental playground - feel free to try innovative approaches
- Document experiments and learnings as you go
- Create examples that are educational and well-commented
- Balance between quick prototypes and production-quality code based on context
- Keep the centralized collaboration guide (`CENTRALIZED_AI_WORKSPACE.md`) nearby; align wording, branch naming, and audit expectations with it.

### Preferred Practices
- Ask clarifying questions when requirements are ambiguous
- Provide explanations for technical decisions
- Suggest improvements or alternative approaches when relevant
- Keep security and best practices in mind even for experimental code
- Avoid secrets in prompts or code; use redaction helpers or placeholders when demonstrating patterns.
- Use "Why/What/Done" headers at the top of PR descriptions so audits and future AIs can skim quickly.

### Working Agreements for Shared Context
- Store raw findings in `notes/YYYY-MM-DD-<topic>.md` and summarize in PRs.
- Maintain prompt templates in `prompts/claude/` and cross-link equivalents in `prompts/chatgpt/`.
- When touching user-facing documentation, keep tone concise and actionable; cite relevant files for future AIs.
- Keep a rolling scratchpad for each session (`notes/YYYY-MM-DD-scratch-<topic>.md`) and link it in PRs so ChatGPT can reload context after a break.

## Common Tasks

### Starting a New Experiment
1. Create a descriptive directory for the experiment
2. Include a README explaining the goal
3. Document dependencies and setup instructions
4. Add example usage
5. Add a short exit checklist at the bottom (tests, lint, context files updated) so handoffs stay predictable.

### Adding Dependencies
- Document why each dependency is needed
- Keep track of versions
- Consider alternatives and trade-offs

### Handling Reviews and Follow-ups
- Capture review summaries in `reviews/` with links back to the PR or branch.
- If a change is reverted or superseded, add a short note explaining why to keep future AIs informed.
- For follow-up requests, prepend a 3–5 bullet "state of the branch" summary (what changed, what failed, what to do next) before writing more code.

## Resources and References

### Useful Links
- Project repository: ai_playground
- Documentation: (to be added)
- Related projects: (to be added)

## Notes

This is a living document. Update it as the project evolves and new patterns emerge.

---

*Last updated: 2025-12-18*
