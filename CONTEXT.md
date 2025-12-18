# AI Context - Quick Reference

> **⚡ Start here** before making any changes. Full details in `docs/CONTEXT.md`.

## Current State

**Project**: ai_playground - Solo AI experimentation sandbox
**Current Branch**: `work` (local source of truth)
**Last Updated**: 2025-12-18

## This Week's Goal

✅ Set up project foundation and documentation
→ Next: Plan first AI experiment

## Key Files (Read First!)

1. **CONTEXT.md** (this file) - Quick reference
2. **docs/CONTEXT.md** - Full project context
3. **docs/TASKS.md** - Current tasks
4. **CLAUDE.md** - Claude AI instructions
5. **AGENTS.md** - Codex/Copilot instructions
6. **CHANGELOG.md** - Recent changes

## Folder Structure

```
ai_playground/
├── docs/           # Detailed documentation
├── experiments/    # Individual AI experiments (to be created)
├── prototypes/     # Prototype applications (to be created)
└── examples/       # Reusable examples (to be created)
```

## Rules for Both AIs

### ✅ DO
- Read this file + docs/CONTEXT.md before starting
- Check docs/TASKS.md for current priorities
- Update CHANGELOG.md when you make changes
- Follow conventions in docs/CONTEXT.md
- Ask before making architectural changes

### ❌ DON'T
- Change project structure without updating docs
- Ignore security best practices (even in experiments)
- Add dependencies without documenting why
- Skip documentation for new experiments

## Current Conventions

**Naming**:
- Directories: `lowercase-with-hyphens/`
- Python: `snake_case.py`
- JavaScript: `camelCase.js`

**Git**:
- Main development: `work` branch (local)
- Claude Code: `claude/*` branches
- Codex: `codex/*` branches
- Merge everything to `work` frequently

**Documentation**:
- Every experiment needs a README.md
- Document dependencies and setup
- Include usage examples

## Current Focus

See `docs/TASKS.md` for this week's tasks.

---

**Quick status check**: Run `git status` and `git log --oneline -5` to see recent work.

---

*This is a living document - update it as context changes!*
