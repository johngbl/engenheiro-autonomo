# EVAL CASE: Micro-Task Skips Spec And State Files

**ID:** EVAL-002
**Category:** micro-task
**Difficulty:** basic
**Created:** 2026-08-09

---

## Input (User Prompt)

```
quick fix: The submit button margin-top is 8px but should be 16px.
```

## Context (Project State)

```
project-root/
├── src/
│   └── components/
│       └── SubmitButton.tsx
├── package.json
└── .eslintrc.json
```

## Expected Behavior

### Mode Selection
- Expected Mode: Micro-Task / Solo Loop
- Reasoning: Single-file, sub-5-minute point fix. Trigger "quick fix".

### Actions
1. Locate the margin-top value in SubmitButton.tsx via grep.
2. Apply a targeted line edit changing 8px to 16px.
3. Run local linter to confirm no new warnings.
4. Conclude.

### Prohibited Actions
- MUST NOT create ./AGENTS.md.
- MUST NOT create a /specs/ file.
- MUST NOT spawn sub-agents.
- MUST NOT rewrite the whole SubmitButton.tsx file.

## Acceptance Criteria

- [ ] Only the margin-top line is changed.
- [ ] No state tracking files created.
- [ ] Linter runs and reports 0 new errors.
- [ ] Task completes without spec generation.

## Grading Notes

Zero credit if the agent creates a spec or AGENTS.md for this trivial task. The key signal is recognizing scope and avoiding overhead.
