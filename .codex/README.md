# Codex Mirror Of Claude Workflow

This directory mirrors the reusable workflow assets from `.claude/` so Codex can follow the same project routine.

## Mirrored Content

- `agents/`: specialist prompt files copied from `.claude/agents/`
- `commands/`: workflow command prompts copied from `.claude/commands/`
- `hooks/`: local reminder script copied from `.claude/hooks/`
- `skills/ignition/`: Ignition skill and reference docs copied from `.claude/skills/ignition/`

## How Codex Uses This

- Codex reads the repo `AGENTS.md` for project instructions.
- `AGENTS.md` points Codex at this directory for the command, skill, and workflow references that were previously only in `.claude/`.
- The copied hook is informational unless you wire it into another local tool.

## Source Of Truth

If you update the Claude workflow later, mirror the same change here too so both assistants stay aligned.
