# AI Coding OS

An "operating system" that enhances AI-assisted development by providing working memory, context management, and structured workflows. This metaphorical OS, when integrated into your project, enables your AI assistant to:
- Maintain consistent context across sessions
- Track project state and decisions
- Follow standardized interaction patterns
- Manage technical documentation systematically
- Adhere to user-defined coding preferences and standards
- Maintain consistent code quality and best practices

## Installation

### Quick Install (Recommended)

Install AI Coding OS interactively:
```bash
curl -fsSL https://raw.githubusercontent.com/mangr3n/ai_coding_os/main/install.sh | sh
```

Or specify an installation directory directly:
```bash
curl -fsSL https://raw.githubusercontent.com/mangr3n/ai_coding_os/main/install.sh | sh -s "/path/to/install/dir"
```

The installer will:
- Ask where you'd like to install (if not specified)
- Clone the repository
- Initialize all components
- Guide you through the final setup steps

### Manual Installation

If you prefer to install manually:

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/mangr3n/ai_coding_os.git
   cd ai_coding_os
   ```

2. Initialize the AI Coding OS:
   ```bash
   ./bin/ai_os init
   ```

   This will:
   - Initialize and update all required submodules
   - Prepare the system for project integration

Once installed locally, this AI Coding OS can be integrated into any number of projects on your machine. You only need to perform this local installation once.

## Requirements

Before installation, ensure you have:
- Git ([installation guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
- A project with a `/docs` directory structure
- An LLM assistant with file system access (e.g., Cascade)
- Ability to create symbolic links in your environment

## Structure

```
ai_coding_os/
├── bin/               # Helper scripts for installation and maintenance
│   └── ai_os         # Main command-line tool for AI OS management
├── boot.md           # Core instructions for AI assistant initialization
├── docs/            # Project documentation
│   └── dev/         # Development documentation
│       ├── idea.md    # Current project state and patterns
│       ├── plan.md    # Project structure and progress tracking
│       └── post-mortem.md  # Decisions, lessons, and improvements
└── ai_coding_tools/  # External repository (https://github.com/mikl0s/ai_coding_tools.git)
    └── ...           # AI workflow tools and productivity enhancements
```

## Project Integration

1. Use the installation command:
   ```bash
   ./bin/ai_os installProject /path/to/your/project
   ```

   This will:
   - Create the required directory structure
   - Link the AI Coding OS to your project
   - Provide next steps

2. Initialize the session by instructing your AI assistant:
   ```
   read os/boot.md and follow the instructions
   ```

## How It Works

The AI Coding OS operates by:

1. **Working Memory**: 
   - Maintains project state in `docs/dev/`
   - Tracks decisions and context across sessions
   - Preserves important project patterns

2. **Context Management**:
   - Every AI response includes context headers
   - Tracks active files and memory state
   - Signals any context or memory issues

3. **Structured Workflows**:
   - Standardized task processing
   - Consistent documentation practices
   - Clear technical debt management

## Usage

1. **Starting a Session**:
   - Always start by having the AI read `os/boot.md`
   - The AI will initialize its working memory
   - Context tracking begins automatically

2. **During Development**:
   - AI maintains context awareness
   - Documentation updates happen automatically
   - Project state is tracked continuously

3. **Between Sessions**:
   - Working memory persists in `docs/dev/`
   - Context can be restored by reading `boot.md`
   - Project history is preserved

## Maintenance

To keep your AI Coding OS current and functioning optimally:

1. **Run the Update Command**:
   ```bash
   ./bin/ai_os update
   ```

   This will:
   - Update the main repository
   - Update AI Coding Tools
   - Provide next steps

2. **When to Update**:
   - Periodically (e.g., monthly) to get new features and improvements
   - When starting a new project
   - If you encounter any issues with the AI's operation
   - After major updates to your AI assistant platform

Note: After updating, you may need to reinitialize the AI in your active projects by having it read `os/boot.md` again.

## Repository Management

### Main Repository
- Repository URL: `https://github.com/mangr3n/ai_coding_os`
- Branch strategy: `main` is primary branch

### Submodules
- Must be initialized after cloning:
  ```bash
  git submodule update --init --recursive
  ```
- To update submodules to latest:
  ```bash
  git submodule update --remote
  ```

### Testing
- Unit tests alongside source files
- Integration tests in separate directory
- Test naming: `test_[feature].[ext]` where `[ext]` matches source file extension
