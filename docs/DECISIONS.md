# Architecture Decision Records (ADR)

This document tracks significant architectural and technical decisions made in the ai_playground project.

## Format

Each decision follows this structure:
- **Date**: When the decision was made
- **Status**: Proposed | Accepted | Deprecated | Superseded
- **Context**: The issue or situation motivating the decision
- **Decision**: What we decided to do
- **Consequences**: The resulting impacts (both positive and negative)

---

## ADR-001: Use Markdown for Documentation

**Date**: 2025-12-18
**Status**: Accepted

**Context**:
We need a simple, version-controllable format for project documentation that works well with Git and is readable by both humans and AI agents.

**Decision**:
Use Markdown (.md) files for all project documentation, organized in a `docs/` directory with clear naming conventions (UPPERCASE for meta-docs like CONTEXT.md, lowercase for content).

**Consequences**:
- ✅ Easy to version control and diff
- ✅ Readable in plain text and renders nicely on GitHub
- ✅ AI agents can easily parse and understand
- ✅ No special tools required to edit
- ❌ Limited formatting compared to rich text editors
- ❌ No built-in validation or schema

---

## ADR-002: Separate Agent Instructions (CLAUDE.md vs AGENTS.md)

**Date**: 2025-12-18
**Status**: Accepted

**Context**:
Different AI agents have different capabilities and interaction patterns. We need to provide tailored instructions for optimal collaboration with each agent type.

**Decision**:
Maintain separate instruction files:
- `CLAUDE.md`: Instructions specific to Claude AI (conversational, context-aware)
- `AGENTS.md`: Instructions for other agents like GitHub Codex (code-completion focused)

**Consequences**:
- ✅ Tailored guidance for each agent's strengths
- ✅ Clearer expectations for agent behavior
- ✅ Easier to update agent-specific instructions
- ❌ Some duplication of general guidelines
- ❌ Need to maintain multiple files

---

## ADR-003: Experiment-Based Organization

**Date**: 2025-12-18
**Status**: Accepted

**Context**:
As an AI playground, we'll have many different experiments, prototypes, and examples. We need a clear organizational structure that allows independent exploration while maintaining discoverability.

**Decision**:
Organize work into three main categories:
- `experiments/`: Standalone experiments exploring specific AI concepts
- `prototypes/`: More complete prototype applications
- `examples/`: Reusable code examples and templates

Each gets its own directory with a descriptive README.

**Consequences**:
- ✅ Clear separation of concerns
- ✅ Easy to find and browse experiments
- ✅ Self-documenting structure
- ✅ Experiments don't interfere with each other
- ❌ Shared code might be duplicated across experiments
- ❌ Need discipline to maintain organization

---

## ADR-004: Weekly Task Tracking

**Date**: 2025-12-18
**Status**: Accepted

**Context**:
We need a lightweight way to track current work and priorities without heavy project management overhead.

**Decision**:
Use `docs/TASKS.md` as a simple weekly task tracker, updated as we plan and complete work. No formal sprint planning or issue tracking system initially.

**Consequences**:
- ✅ Lightweight and easy to update
- ✅ Visible in the repository alongside code
- ✅ No external tools required
- ❌ Limited tracking for long-term planning
- ❌ May need a real PM tool as project grows
- ❌ No automatic notifications or reminders

---

## Template for New Decisions

```markdown
## ADR-XXX: [Short Title]

**Date**: YYYY-MM-DD
**Status**: Proposed | Accepted | Deprecated | Superseded

**Context**:
[Describe the issue or situation that requires a decision]

**Decision**:
[Describe what we decided to do]

**Consequences**:
- ✅ [Positive consequence]
- ❌ [Negative consequence or trade-off]
```

---

*Last Updated: 2025-12-18*
