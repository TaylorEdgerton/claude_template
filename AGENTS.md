# Codex Workflow

Use the project-local assets in `.codex/` to mirror the workflow used in `.claude/`.

## Core Workflow

- Use `tasks/current.md` as the single source of truth for active work.
- Read `docs/backlog.md` to identify the next or selected user story.
- Copy the chosen story and acceptance criteria into `tasks/current.md` using `tasks/current-template.md`.
- Do a research pass before planning: inspect relevant files, patterns, constraints, and open questions, then write findings into the `## Research` section of `tasks/current.md`.
- Do not start implementation until the plan is clear and documented in `tasks/current.md`.
- Keep `tasks/current.md` updated as phases are completed.
- When wrapping up completed work, update `docs/backlog.md`, refresh `docs/scriptReferences.md` if relevant, and move the finished task note into `tasks/completed/`.

## Command References

The Claude command prompts have been mirrored for reference:

- `.codex/commands/start-task.md`
- `.codex/commands/research.md`
- `.codex/commands/checkpoint.md`
- `.codex/commands/update-references.md`
- `.codex/commands/wrap-up.md`

Follow those workflows when the user asks for the equivalent action.

## Skills

- For Ignition, SCADA, Perspective, Vision, tag, binding, or project JSON work, use `.codex/skills/ignition/SKILL.md`.
- Supporting references for that skill live beside it in `.codex/skills/ignition/`.

## Specialist Prompts

Reference prompts from `.claude/agents/` have been mirrored into `.codex/agents/` for reuse:

- `technical-architect`
- `product-backlog-manager`
- `python-feature-dev`
- `k8s-gitops-architect`

Use them as guidance when a task clearly matches one of those specialties.

## Notes

- The Claude notification hook has been copied to `.codex/hooks/context-reminder.sh` for reference, but Codex does not automatically execute Claude hooks.
- Keep changes aligned with existing project conventions in `CLAUDE.md`, `docs/architecture.md`, and `docs/references.md`.
