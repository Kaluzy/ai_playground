# Project Context

## What is ai_playground?

**ai_playground** is an experimental repository for exploring AI-assisted development, testing AI code generation capabilities, and prototyping AI-powered applications. This serves as a safe sandbox environment for learning, experimentation, and documentation of AI development patterns.

## Project Purpose

- **Experimentation**: Test and evaluate different AI models, tools, and frameworks
- **Learning**: Document learnings, patterns, and best practices for AI-assisted development
- **Prototyping**: Quickly build and iterate on AI-powered application ideas
- **Collaboration**: Explore human-AI collaborative workflows
- **Documentation**: Create reusable examples and templates for future projects

## Folder Structure

```
ai_playground/
├── docs/                   # Project documentation
│   ├── CONTEXT.md         # This file - project overview and conventions
│   ├── DECISIONS.md       # Architecture Decision Records (ADR)
│   └── TASKS.md           # Current sprint/week tasks
├── experiments/           # Individual AI experiments (to be created)
├── prototypes/            # Prototype applications (to be created)
├── examples/              # Code examples and templates (to be created)
├── AGENTS.md              # Instructions for AI agents (Codex, etc.)
├── CLAUDE.md              # Instructions for Claude AI
└── README.md              # Public-facing project description (to be created)
```

## Conventions

### File Organization
- Each experiment gets its own directory under `experiments/`
- Include a README.md in each experiment explaining the goal and setup
- Keep related files together in their respective directories

### Naming Conventions
- Use lowercase with hyphens for directories: `experiment-name/`
- Use descriptive names that indicate purpose: `gpt-fine-tuning/`, `image-generation/`
- Document files use UPPERCASE: `README.md`, `CONTEXT.md`

### Code Style
- **Python**: Follow PEP 8 style guide
- **JavaScript/TypeScript**: Use ESLint + Prettier
- **General**: Prioritize readability over cleverness
- **Comments**: Explain *why*, not *what*

### Git Workflow
- Branch naming: `claude/feature-name-{sessionId}`
- Commit messages: Clear, descriptive, present tense
- Keep commits atomic and focused
- Push regularly to avoid losing work

### Documentation Standards
- Every experiment must have a README.md
- Document dependencies and environment setup
- Include example usage and expected outputs
- Note any limitations or known issues

### AI Collaboration Guidelines
- Be explicit about goals and constraints
- Review AI-generated code before committing
- Document interesting patterns or issues encountered
- Iterate and refine prompts for better results

## Technology Stack

*To be determined based on experiments. Will document preferred tools and frameworks as they emerge.*

### Current Tools
- Git for version control
- Markdown for documentation
- Claude AI for development assistance

### Planned Explorations
- LLM APIs (OpenAI, Anthropic, etc.)
- AI frameworks (LangChain, LlamaIndex, etc.)
- Vector databases
- Fine-tuning workflows
- Prompt engineering tools

## Getting Started

1. Clone the repository
2. Read this CONTEXT.md and CLAUDE.md/AGENTS.md
3. Check TASKS.md for current priorities
4. Create a new experiment directory or work on existing tasks
5. Document your findings and commit your work

## Dependencies

Dependencies will be managed per-experiment. Global dependencies (if any) will be documented here.

## Environment Setup

Setup instructions will be added as experiments require specific configurations.

---

*Last Updated: 2025-12-18*
