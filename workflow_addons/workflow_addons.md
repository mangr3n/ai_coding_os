# Workflow Addons

## Overview
Workflow addons extend the base AI Coding OS workflow with additional capabilities and conventions. Each addon is numbered starting from 101 to avoid conflicts with the base workflow documents (001-099) located in `/os/ai_coding_tools/docs/`.

## Addon Structure
- Each addon is a markdown file numbered sequentially from 101
- Addons follow the naming convention: `[number]-[feature-name].md`
- Example: `101-reference-code.md`, `102-feature-name.md`

## Addon Categories
Addons can provide various workflow enhancements:
1. New conventions (e.g., reference code management)
2. Additional documentation templates
3. Extended workflow steps
4. Project organization patterns
5. Quality assurance procedures

## Using Addons
1. Addons are automatically available when AI OS is installed
2. Reference them by their number or feature name
3. They integrate with the base workflow seamlessly
4. Can be used independently or in combination

## Creating New Addons
When creating new addons:
1. Use the next available number (101+)
2. Follow the existing documentation style
3. Clearly document any new conventions
4. Include necessary templates
5. Update this file's addon list
6. Check existing addons for similar functionality
7. Consider extending existing addons before creating new ones

## Available Addons

### 101-reference-code.md
**Purpose**: Track reference codebases used to inform implementation
**Key Features**:
- Documents reference code sources in REFERENCES.md
- Supports feature-specific references within projects
- Guides creation of dedicated adaptation projects
**Use When**: 
- You're implementing features informed by existing codebases
- You're creating a new package/module adapted from existing code

<!-- Template for new entries:
### XXX-addon-name.md
**Purpose**: One-line description
**Key Features**:
- Key feature 1
- Key feature 2
**Use When**: Specific use cases
-->
