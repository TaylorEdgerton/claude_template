#!/bin/bash
set -e

echo "=== Project Setup ==="
read -p "Project name: " PROJECT_NAME
read -p "Short description: " DESCRIPTION
read -p "Primary stack (e.g. java/ignition, python/fastapi): " STACK

# Update CLAUDE.md
sed -i "s/\[Name\]/$PROJECT_NAME/g" CLAUDE.md
sed -i "s/\[2-3 sentences.*\]/$DESCRIPTION/g" CLAUDE.md
sed -i "s/\[Language\/framework\]/$STACK/g" CLAUDE.md

# Update README
sed -i "s/\[Project Name\]/$PROJECT_NAME/g" README.md

# Initialise git if not already
if [ ! -d ".git" ]; then
    git init
    git add -A
    git commit -m "init: scaffold from project-template"
fi

echo ""
echo "Done. Next steps:"
echo "  1. Edit CLAUDE.md — fill in conventions and architecture summary"
echo "  2. Edit docs/backlog.md — add your user stories"
echo "  3. Copy any relevant skills into .claude/skills/"
echo "  4. Run: claude"
echo "  5. Start with: /start-task"
