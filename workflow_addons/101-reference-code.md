# Reference Code Management

## Overview
This addon provides conventions for tracking reference codebases that inform your implementation. Whether you're implementing specific features in an existing project or creating a new adaptation as a standalone package, proper reference tracking helps with attribution and future maintenance.

## Use Cases

### 1. Feature-Specific Reference
When using reference code to inform feature implementation within your project:
```markdown
## [Feature Name] (in REFERENCES.md)
- **Reference**: [URL to reference codebase]
- **Usage**: Implementing [specific feature] based on reference implementation
- **Notes**: 
  - Using [specific parts] as reference for our implementation
  - Adapted to fit our existing architecture/patterns
  - See [file/component] for implementation
```

Example:
```markdown
## Chat Features
- **Reference**: https://github.com/vercel/ai-chatbot
- **Usage**: Implementing message streaming and chat history features
- **Notes**:
  - Using message streaming implementation as reference
  - Adapted to work with our existing state management
  - See src/features/chat/MessageStream.tsx for implementation
```

### 2. Dedicated Adaptation Project
When creating a new package/module adapted from reference code:
```markdown
## Project Overview (in REFERENCES.md)
- **Original**: [URL to original codebase]
- **Purpose**: Creating [new package/module] based on [original]
- **Scope**: 
  - Features being adapted
  - Changes in implementation
  - New capabilities added
```

Example:
```markdown
## Project Overview
- **Original**: https://github.com/example/state-machine
- **Purpose**: Creating a TypeScript-first state machine library
- **Scope**:
  - Adapting core state management
  - Adding TypeScript-specific features
  - New visualization capabilities
```

## Implementation
1. Create REFERENCES.md in project root
2. Add appropriate entry based on use case
3. Include reference URLs in relevant code comments
4. Keep reference documentation focused on what's actually being used/adapted

## Best Practices
- Document specific features/patterns being referenced
- Keep implementation in appropriate project location (src/, lib/, etc.)
- Include version/commit hash of reference code when relevant
- Update REFERENCES.md as implementation evolves
- Add comments in code pointing to specific reference points when helpful
