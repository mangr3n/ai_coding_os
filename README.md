# AI Assistant Working Memory

A shared knowledge base for maintaining context and preferences in AI-assisted development. This project serves as a persistent memory space for the AI assistant to better understand and adapt to your working style, preferences, and common patterns across different projects.

## Purpose

This working memory helps maintain consistency and improve the quality of AI-assisted development by:
- Storing interaction preferences and patterns
- Maintaining project conventions and defaults
- Learning from successful approaches
- Preserving context across different projects

## Structure

```
working-memory/
├── preferences/          # User preferences for interaction and development
├── patterns/            # Common workflows and project templates
├── context/            # Development environment and project history
└── learning/           # Successful approaches and areas for improvement
```

## Usage

This repository is meant to be referenced and maintained by the AI assistant and the programmer during development sessions. It helps create a more personalized and effective collaboration experience by maintaining context across different projects and conversations.

The contents of this repository will evolve organically as we work together, capturing successful patterns and learning from our interactions.

## Evolution Process

The working memory system evolves through active use:

1. **Boot Script (`boot.md`)**
   - Core configuration loaded at start of each session
   - Defines preferences, patterns, and protocols
   - Changes require careful consideration

2. **Improvement Tracking (`boot-improvements.md`)**
   - Captures potential improvements during sessions
   - Each entry includes context and rationale
   - Regular reviews inform boot.md updates

3. **Update Process**
   - Identify improvement during session
   - Document in boot-improvements.md
   - Review and discuss potential changes
   - Update boot.md when changes are approved

This process ensures our working memory system grows more effective while maintaining stability.
