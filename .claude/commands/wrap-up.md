End of session routine:

1. Run quality checks from the product plane:
   - `cd ScrumTeam && ruff check .`
2. Run `git status` — if there are uncommitted changes, commit them
3. Update tasks/current.md with current progress
4. If the task is complete:
   - Move tasks/current.md to tasks/completed/ with a timestamp filename
   - Update docs/backlog.md to mark the story as done
   - Update docs/scriptReferences.md with updated context
5. Copy `tasks/current-template.md` in place of `tasks/current.md`
6. Summarise what was accomplished and what's next
