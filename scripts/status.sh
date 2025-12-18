#!/bin/bash
# Show status of all branches and recent activity

echo "📊 AI Playground - Git Status"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Current branch
CURRENT_BRANCH=$(git branch --show-current)
echo "📍 Current branch: $CURRENT_BRANCH"
echo ""

# Local branches
echo "💻 Local branches:"
git branch -vv
echo ""

# Remote claude/* branches
echo "☁️  Remote claude/* branches:"
git branch -r | grep 'claude/' | tail -5
echo ""

# Recent commits on work
echo "📝 Recent commits on 'work' branch:"
git log work --oneline -5 2>/dev/null || echo "   (work branch not found)"
echo ""

# Uncommitted changes
if ! git diff-index --quiet HEAD -- 2>/dev/null; then
    echo "⚠️  Uncommitted changes:"
    git status -s
else
    echo "✅ Working tree clean"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "💡 Quick commands:"
echo "   ./scripts/sync-from-claude.sh     - Pull latest Claude changes"
echo "   ./scripts/push-for-claude.sh      - Push work for next Claude session"
echo "   ./scripts/status.sh               - Show this status"
