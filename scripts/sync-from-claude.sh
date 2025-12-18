#!/bin/bash
# Sync latest changes from Claude Code Web sessions into local 'work' branch

set -e

echo "🔄 Syncing from Claude Code branches..."

# Ensure we're on work branch
git checkout work

# Fetch all remote branches
echo "📥 Fetching remote branches..."
git fetch origin

# Find the most recent claude/* branch
LATEST_CLAUDE=$(git branch -r | grep 'origin/claude/' | sort -r | head -n 1 | sed 's/origin\///' | xargs)

if [ -z "$LATEST_CLAUDE" ]; then
    echo "❌ No claude/* branches found on remote"
    exit 1
fi

echo "📌 Latest Claude branch: $LATEST_CLAUDE"

# Check if there are new changes
if git merge-base --is-ancestor origin/$LATEST_CLAUDE HEAD; then
    echo "✅ Work branch is already up to date with $LATEST_CLAUDE"
else
    echo "🔀 Merging $LATEST_CLAUDE into work..."
    git merge origin/$LATEST_CLAUDE -m "Sync: Merge $LATEST_CLAUDE into work"
    echo "✅ Successfully merged $LATEST_CLAUDE"
fi

# Show status
echo ""
echo "📊 Current status:"
git log --oneline -5

echo ""
echo "✅ Sync complete! Your 'work' branch is now up to date."
