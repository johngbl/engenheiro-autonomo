# =============================================================================
# Autonomous Engineer v1.0 — Bootstrap a target project for the Agentic Loop.
#
# Usage:
#   .\setup.ps1 [TargetProjectPath]     (defaults to the current directory)
#
# This script seeds the AI-ready workspace structure described in README.md.
# It NEVER overwrites existing files, so it is safe to re-run.
# =============================================================================

param(
    [string]$TargetDir = "."
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

# --- Create the AI-ready directory skeleton --------------------------------
New-Item -ItemType Directory -Force -Path @(
    "$TargetDir/.claude/rules",
    "$TargetDir/.claude/registry",
    "$TargetDir/specs",
    "$TargetDir/evals/cases",
    "$TargetDir/.tmp"
) | Out-Null

# --- Copy-if-missing helper (never overwrite existing files) -----------------
function Copy-IfMissing([string]$Source, [string]$Destination) {
    if (-not (Test-Path $Destination)) {
        Copy-Item -Path $Source -Destination $Destination
    }
}

# --- Seed state + spec templates ---------------------------------------------
Copy-IfMissing "$root/templates/AGENTS.template.md"      "$TargetDir/AGENTS.md"
Copy-IfMissing "$root/templates/SPEC.template.md"       "$TargetDir/specs/000-template.md"
Copy-IfMissing "$root/templates/eval-case.template.md"  "$TargetDir/evals/000-template.md"

# --- Seed distributed rules and the living registry --------------------------
Get-ChildItem "$root/templates/rules" -File | ForEach-Object {
    Copy-IfMissing $_.FullName "$TargetDir/.claude/rules/$($_.Name)"
}
Get-ChildItem "$root/registry" -File | ForEach-Object {
    Copy-IfMissing $_.FullName "$TargetDir/.claude/registry/$($_.Name)"
}

Write-Host "✅ Project '$TargetDir' bootstrapped for the Autonomous Engineer Agentic Loop (v1.0.0)."
Write-Host "   Next: edit ./AGENTS.md to record your stack, then start a loop."
