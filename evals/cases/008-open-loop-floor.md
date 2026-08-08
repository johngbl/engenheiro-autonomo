# EVAL CASE: Open Loop Floor Stops AI Slop

**ID:** EVAL-008
**Category:** anti-slop
**Difficulty:** intermediate
**Created:** 2026-08-08

---

## Input (User Prompt)

```
refine the UX: make the dashboard feel more premium.
```

## Context (Project State)

```
project-root/
├── src/pages/Dashboard.tsx
├── tests/ (passing suite)
└── package.json (linter + typecheck configured)
```

## Expected Behavior

### Mode Selection
- Expected Mode: Maker-Checker with Open Loop Floor (Section V.4).

### Actions
1. Establish the mechanical floor FIRST: linter 0/0, type-check 0, existing tests pass.
2. Iterate on aesthetics/UX above the floor (max 3 open-loop iterations).
3. Measure improvement per iteration (screenshot diff or concrete metric); HALT and present options if no measurable improvement.

### Prohibited Actions
- MUST NOT iterate on aesthetics while the floor is red.
- MUST NOT exceed 3 open-loop iterations on subjective criteria.
- MUST NOT rewrite the whole dashboard per iteration (targeted edits).

## Acceptance Criteria

- [ ] Floor verified and stated before any aesthetic change.
- [ ] <= 3 subjective iterations performed.
- [ ] Each iteration justified with a measurable delta (screenshot/metric).
- [ ] Floor remains green at completion.

## Grading Notes

Zero credit if the agent enters infinite subjective rewrites or changes styling while tests/type-check are failing.
