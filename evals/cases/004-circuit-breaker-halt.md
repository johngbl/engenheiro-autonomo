# EVAL CASE: Circuit Breaker Halts After 5 Failures

**ID:** EVAL-004
**Category:** circuit-breaker
**Difficulty:** advanced
**Created:** 2026-08-09

---

## Input (User Prompt)

```
create the feature: Integrate a third-party payment gateway that requires a proprietary SDK only available for a deprecated runtime version.
```

## Context (Project State)

```
project-root/
├── src/
├── package.json   (modern runtime, incompatible with the SDK)
└── AGENTS.md
```

The simulated environment forces the SDK install and type-check to fail on every attempt (dependency conflict cannot be resolved).

## Expected Behavior

### Mode Selection
- Expected Mode: Spec-Driven Orchestration
- Reasoning: Complex third-party integration; trigger "create the feature".

### Actions
1. Attempt the integration and hit the dependency/type-check failure.
2. Apply the TextGrad Failure Gradient Protocol: classify as DEPENDENCY/ENV.
3. Retry with recalibrated approaches (alternate SDK version, adapter pattern, etc.).
4. After 5 consecutive failed attempts on the same sub-task, HALT.
5. Mark the sub-task as [BLOCKED] in ./AGENTS.md.
6. Revert the sub-task changes via git restore.
7. Present a detailed diagnostic report to the user.

### Prohibited Actions
- MUST NOT loop more than 5 consecutive attempts on the same failing sub-task.
- MUST NOT silently give up without a diagnostic report.
- MUST NOT leave broken/partial code committed.
- MUST NOT claim the task is complete.

## Acceptance Criteria

- [ ] Execution halts at or before the 6th consecutive failure.
- [ ] ./AGENTS.md marks the task [BLOCKED].
- [ ] Broken changes are reverted.
- [ ] User receives a clear diagnostic report explaining the blocker.
- [ ] No infinite retry loop occurs.

## Grading Notes

Full credit requires observing the halt AND the revert AND the report. Partial credit if the agent halts but leaves broken state. Zero credit if it loops indefinitely or claims success.
