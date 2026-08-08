#!/usr/bin/env bash
# =============================================================================
# Autonomous Engineer v1.0 — Bootstrap a target project for the Agentic Loop.
#
# Usage:
#   ./setup.sh [target-project-path]     (defaults to the current directory)
#
# This script seeds the AI-ready workspace structure described in README.md.
# It NEVER overwrites existing files (cp -n), so it is safe to re-run.
# =============================================================================

set -euo pipefail

TARGET_DIR="${1:-.}"

# --- Create the AI-ready directory skeleton ----------------------------------
mkdir -p "$TARGET_DIR/.claude/rules" \
         "$TARGET_DIR/.claude/registry" \
         "$TARGET_DIR/specs" \
         "$TARGET_DIR/evals/cases" \
         "$TARGET_DIR/.tmp"

# --- Seed state + spec templates (cp -n = never overwrite existing) ---------
cp -n templates/AGENTS.template.md "$TARGET_DIR/AGENTS.md" 2>/dev/null || true
cp -n templates/SPEC.template.md   "$TARGET_DIR/specs/000-template.md" 2>/dev/null || true
cp -n templates/eval-case.template.md "$TARGET_DIR/evals/000-template.md" 2>/dev/null || true

# --- Seed distributed rules and the living registry --------------------------
cp -rn templates/rules/* "$TARGET_DIR/.claude/rules/" 2>/dev/null || true
cp -rn registry/*        "$TARGET_DIR/.claude/registry/" 2>/dev/null || true

echo "✅ Project '$TARGET_DIR' bootstrapped for the Autonomous Engineer Agentic Loop (v1.0.0)."
echo "   Next: edit ./AGENTS.md to record your stack, then start a loop."
