#!/bin/bash
# Fullstack Marketing Skills — Installer for Claude Code
# Usage: ./install.sh [--global | --project]

set -e

SKILL_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_HOME="${HOME}/.claude"
TARGET=""

# Parse arguments
case "${1:-}" in
  --global)
    TARGET="${CLAUDE_HOME}/skills/marketing"
    ;;
  --project)
    TARGET=".claude/skills/marketing"
    ;;
  *)
    echo "Fullstack Marketing Skills — Installer"
    echo ""
    echo "Usage:"
    echo "  ./install.sh --global    # Install to ~/.claude/skills/marketing"
    echo "  ./install.sh --project   # Install to ./.claude/skills/marketing (current project)"
    echo ""
    echo "Choose installation target:"
    echo "  1) Global  (all projects)"
    echo "  2) Project (current project only)"
    read -rp "Enter choice [1/2]: " choice
    case "$choice" in
      1) TARGET="${CLAUDE_HOME}/skills/marketing" ;;
      2) TARGET=".claude/skills/marketing" ;;
      *) echo "Invalid choice. Exiting." && exit 1 ;;
    esac
    ;;
esac

echo "Installing to: ${TARGET}"
echo ""

# Create target directory
mkdir -p "${TARGET}"

# Copy skills
echo "Copying skills..."
cp -r "${SKILL_DIR}/skills/"* "${TARGET}/" 2>/dev/null || true

# Copy references
mkdir -p "${TARGET}/references"
cp -r "${SKILL_DIR}/references/"* "${TARGET}/references/" 2>/dev/null || true

# Copy workflows
mkdir -p "${TARGET}/workflows"
cp -r "${SKILL_DIR}/workflows/"* "${TARGET}/workflows/" 2>/dev/null || true

# Copy agents
mkdir -p "${TARGET}/agents"
cp -r "${SKILL_DIR}/agents/"* "${TARGET}/agents/" 2>/dev/null || true

# Copy knowledge base
mkdir -p "${TARGET}/knowledge"
cp -r "${SKILL_DIR}/knowledge/"* "${TARGET}/knowledge/" 2>/dev/null || true

# Copy CLAUDE.md
cp "${SKILL_DIR}/CLAUDE.md" "${TARGET}/CLAUDE.md" 2>/dev/null || true

echo ""
echo "Done! Installed $(find "${TARGET}" -name "*.md" | wc -l | tr -d ' ') files."
echo ""
echo "Usage in Claude Code:"
echo '  > Lap ke hoach marketing cho [san pham]'
echo '  > Viet script TikTok cho [san pham]'
echo '  > Danh gia hieu suat chien dich [ten]'
echo ""
echo "Full list: see README.md"
