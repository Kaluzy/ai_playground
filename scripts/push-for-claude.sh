#!/bin/bash
# Push current 'work' branch to a new claude/* branch for next Claude Code session

set -e

# Get a unique suffix (timestamp)
SUFFIX=$(date +%s)
SESSION_ID=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 5)
BRANCH_NAME="claude/sync-${SESSION_ID}"

echo "🚀 Preparing to push work branch for Claude Code..."

# Ensure we're on work branch
git checkout work

# Check if there are uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "⚠️  You have uncommitted changes. Commit them first:"
    git status -s
    exit 1
fi

# Create new claude/* branch from work
echo "📝 Creating branch: $BRANCH_NAME"
git checkout -b "$BRANCH_NAME"

# Push to remote
echo "📤 Pushing to remote..."
git push -u origin "$BRANCH_NAME"

echo ""
echo "✅ Successfully pushed to $BRANCH_NAME"
echo ""
echo "🎯 Next steps:"
echo "   1. Open Claude Code Web"
echo "   2. Start a new session (it should pick up this branch)"
echo "   3. After Claude finishes, run: ./scripts/sync-from-claude.sh"
echo ""

# Go back to work branch
git checkout work
