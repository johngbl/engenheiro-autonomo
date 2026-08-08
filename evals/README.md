# Evals — Golden Dataset for the Autonomous Engineer Meta-Skill

This directory contains golden dataset cases that validate the **behavior of the skill itself**, not application code. This is Evals-Driven Development (EDD) applied to the agent.

## Purpose

When the SKILL.md motor evolves, these cases ensure no behavioral regression. Each case defines an input prompt, a project context, and the expected agent behavior (mode selection, actions, prohibited actions).

## Structure

```
evals/
├── README.md            <- This file
└── cases/
    ├── 001-analysis-mode-readonly.md
    ├── 002-micro-task-direct-execution.md
    ├── 003-tdd-deletion-enforcement.md
    ├── 004-circuit-breaker-halt.md
    └── 005-clarification-gate.md
```

## How To Add A Case

1. Copy `templates/eval-case.template.md`.
2. Fill in: Input prompt, Context, Expected Mode, Actions, Prohibited Actions, Acceptance Criteria.
3. Save as `cases/NNN-descriptive-name.md`.
4. Cases must be deterministic and unambiguous.

## How To Run

These cases are validated by a human reviewer or an evaluator harness that replays the input prompt against the agent and checks the behavior against the acceptance criteria. A case fails if the agent violates any Prohibited Action or misses any Acceptance Criterion.

## CI Gate Rule

If a SKILL.md change causes a golden case to fail, the change MUST be reverted or fixed before merge. Golden cases are immutable unless business requirements explicitly changed.
