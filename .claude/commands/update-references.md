# .claude/commands/update-references.md

Scan the project directory structure and generate an updated docs/scriptReferences.md.

For each script file found:
1. Read the file
2. Extract the first docstring or comment block as the description
3. For named queries, extract the SQL summary and parameter names
4. For Perspective event handlers, note the component path and event type

Group by category: Project Library Scripts, Named Queries, Gateway Scripts, Perspective Event Handlers.

For each entry include: file path, one-line description, key functions/parameters.

Write the output to docs/scriptReferences.md and show me a summary of what changed.