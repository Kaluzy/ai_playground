# 🤖 AI Playground

An experimental repository for AI-assisted development, testing AI code generation capabilities, and prototyping AI-powered applications.

## 🎯 Purpose

This is a **solo development sandbox** optimized for collaboration between human developers and AI assistants (Claude Code, GitHub Copilot, etc.). It provides:

- **Structured experimentation** with AI models and frameworks
- **Shared context** between different AI tools
- **Documentation-first** approach to maintain clarity
- **Simple workflow** for solo development with multiple AI assistants

## 📋 Quick Start

### First Time Setup

1. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd ai_playground
   ```

2. **Read the AI Context Pack** (critical for understanding the project):
   - `CONTEXT.md` - Quick reference
   - `docs/CONTEXT.md` - Full project details
   - `CLAUDE.md` - If using Claude Code
   - `AGENTS.md` - If using Copilot/Codex

3. **Check current tasks**:
   ```bash
   cat docs/TASKS.md
   ```

### Daily Workflow

#### Option 1: Using Claude Code Web

```bash
# 1. Sync latest changes from previous Claude sessions
./scripts/sync-from-claude.sh

# 2. Do your work on 'work' branch
git checkout work
# ... make changes, commit ...

# 3. Push for next Claude Code session
./scripts/push-for-claude.sh

# 4. Start Claude Code Web (it picks up the pushed branch)
```

#### Option 2: Using Codex/Copilot (local)

```bash
# 1. Work directly on 'work' branch
git checkout work

# 2. Make changes with Codex
# ... code with AI assistance ...

# 3. Commit frequently
git add .
git commit -m "Description of changes"

# 4. Optional: Push to remote if you want Claude to see it
./scripts/push-for-claude.sh
```

#### Check Status Anytime

```bash
./scripts/status.sh
```

## 📁 Project Structure

```
ai_playground/
├── docs/                    # Detailed documentation
│   ├── CONTEXT.md          # Full project context & conventions
│   ├── DECISIONS.md        # Architecture Decision Records (ADR)
│   └── TASKS.md            # Weekly task tracking
├── scripts/                 # Automation scripts
│   ├── sync-from-claude.sh # Sync from Claude Code sessions
│   ├── push-for-claude.sh  # Push work for Claude Code
│   └── status.sh           # Show git status
├── experiments/             # Individual AI experiments (TBD)
├── prototypes/              # Prototype applications (TBD)
├── examples/                # Reusable code examples (TBD)
├── CONTEXT.md              # Quick reference for AIs
├── CLAUDE.md               # Claude Code instructions
├── AGENTS.md               # Copilot/Codex instructions
├── CHANGELOG.md            # Change tracking
└── README.md               # This file
```

## 🔄 Git Workflow

### Branch Strategy (Solo Development)

```
work (local)          ← Your source of truth
  ├── claude/*        ← Claude Code Web session branches
  └── codex/*         ← Optional Codex-specific branches
```

**Key Principles**:
- `work` branch is your **local source of truth**
- `claude/*` branches are created by Claude Code Web (ephemeral)
- Merge everything back to `work` frequently
- Push to `claude/*` branches when you need Claude Code to see changes

### Branch Naming Constraints

⚠️ **Important**: This repository requires remote branches to follow the `claude/*` pattern due to access controls.

- ✅ Can push: `claude/feature-name`, `claude/sync-12345`
- ❌ Cannot push: `main`, `work`, `dev`, `feature/xyz`

### Workflow Scripts

| Script | Purpose |
|--------|---------|
| `sync-from-claude.sh` | Pull latest changes from Claude Code sessions into `work` |
| `push-for-claude.sh` | Push `work` branch to a new `claude/*` branch for Claude Code |
| `status.sh` | Show current branch status and recent activity |

## 📚 Documentation

### For AI Assistants

- **CONTEXT.md** - Quick reference loaded at start of each session
- **CLAUDE.md** - Specific guidance for Claude Code
- **AGENTS.md** - Specific guidance for code completion agents (Copilot, Codex)

### For Humans

- **docs/CONTEXT.md** - Complete project context, conventions, and structure
- **docs/DECISIONS.md** - Architectural decisions with rationale (ADR format)
- **docs/TASKS.md** - Current sprint tasks and backlog
- **CHANGELOG.md** - Record of changes for context continuity

## 🎨 Conventions

### Code Style
- **Python**: PEP 8, type hints, descriptive names
- **JavaScript**: ES6+, const/let, async/await
- **General**: Clear > Clever, explain "why" not "what"

### Naming
- Directories: `lowercase-with-hyphens/`
- Python files: `snake_case.py`
- JavaScript files: `camelCase.js`
- Constants: `UPPER_SNAKE_CASE`

### Git Commits
- Present tense: "Add feature" not "Added feature"
- Descriptive: Explain what and why
- Atomic: One logical change per commit

### Documentation
- Every experiment needs a `README.md`
- Document dependencies and setup instructions
- Include usage examples
- Update `CHANGELOG.md` for significant changes

## 🚀 Starting a New Experiment

```bash
# 1. Create experiment directory
mkdir experiments/my-experiment
cd experiments/my-experiment

# 2. Create README
cat > README.md << 'EOF'
# My Experiment

## Goal
[What you're trying to learn/build]

## Setup
[How to install dependencies]

## Usage
[How to run it]

## Findings
[What you learned]
EOF

# 3. Add code and commit
git add .
git commit -m "Add my-experiment: [brief description]"
```

## 🛠️ Common Tasks

### Update Context for AIs
Edit `CONTEXT.md` to reflect current state:
```bash
vim CONTEXT.md
# Update "Current State" and "This Week's Goal"
git add CONTEXT.md
git commit -m "Update context: [what changed]"
```

### Record a Decision
Add to `docs/DECISIONS.md`:
```bash
vim docs/DECISIONS.md
# Add new ADR using template at bottom of file
git add docs/DECISIONS.md
git commit -m "Decision: [brief description]"
```

### Plan This Week
Update `docs/TASKS.md`:
```bash
vim docs/TASKS.md
# Add tasks for current week
git add docs/TASKS.md
git commit -m "Plan: This week's tasks"
```

## 🤝 AI Collaboration Best Practices

1. **Always start sessions by reading**:
   - `CONTEXT.md` - Current state
   - `docs/TASKS.md` - Current priorities
   - `CHANGELOG.md` - Recent changes

2. **Update documentation as you go**:
   - Add to `CHANGELOG.md` after significant changes
   - Update `CONTEXT.md` when context shifts
   - Record decisions in `docs/DECISIONS.md`

3. **Commit frequently**:
   - Small, focused commits
   - Clear commit messages
   - Push to remote regularly

4. **Communicate between AI sessions**:
   - Use `CHANGELOG.md` to explain what you did and why
   - Update `CONTEXT.md` if you change direction
   - Check `docs/TASKS.md` before starting new work

## 📖 Further Reading

- [Architecture Decision Records](https://adr.github.io/) - ADR format reference
- [Keep a Changelog](https://keepachangelog.com/) - Changelog format
- [Conventional Commits](https://www.conventionalcommits.org/) - Commit message format

## 📝 Current Status

See `CONTEXT.md` for the most up-to-date status.

**Last Updated**: 2025-12-18

---

**Happy experimenting! 🚀**
