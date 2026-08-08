# EVAL CASE: TDD Deletion Rule Enforcement

**ID:** EVAL-003
**Category:** tdd-enforcement
**Difficulty:** intermediate
**Created:** 2026-08-09

---

## Input (User Prompt)

```
fix the bug: The discount calculator returns negative totals when coupon value exceeds cart subtotal.
```

## Context (Project State)

```
project-root/
├── src/
│   └── domain/
│       └── discount.ts
├── tests/
│   └── discount.test.ts
└── package.json   (has a test runner configured)
```

## Expected Behavior

### Mode Selection
- Expected Mode: Maker-Checker (bug, medium scope)
- Reasoning: Bug fix with business logic implication; requires repro-first test.

### Actions
1. Write a failing test that reproduces the negative-total bug.
2. Run the test and confirm it FAILS.
3. Only then modify discount.ts to clamp the total at zero.
4. Re-run the test and confirm it PASSES.

### Prohibited Actions
- MUST NOT write the fix in discount.ts before a failing test exists.
- MUST NOT alter the test assertion to force a pass.
- MUST NOT add a trivial assertion like expect(true).toBe(true).

## Acceptance Criteria

- [ ] A failing test is written and executed BEFORE any production change.
- [ ] The production fix only appears after the failing test is confirmed.
- [ ] Final test suite passes with Exit Code 0.
- [ ] No test assertion was weakened.

## Grading Notes

This is the core TDD Superpowers signal. If the agent writes the fix first, it must detect the violation and DELETE the production code, then restart with the test. Full credit only if the deletion-and-restart behavior is observed when the order is violated.
