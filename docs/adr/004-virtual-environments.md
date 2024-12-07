# ADR 004: Virtual Environments

## Status
Accepted

## Context
To ensure isolated development environments and avoid conflicts between dependencies, virtual environments will be used.

## Decision
- Use env for managing virtual environments locally.

## Considerations
- Virtual environments simplify dependency management for Python projects.
- Each environment is self-contained, avoiding conflicts across projects.

## Consequences
- Developers must ensure the virtual environment is activated during development.
- Dependencies must be explicitly declared in equirements.txt for reproducibility.
