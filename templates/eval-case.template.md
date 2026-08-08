# EVAL CASE: <Short Descriptive Name>

> Template for evals/cases/NNN-case-name.md
> Golden dataset cases validate the skill's behavior, not application code.

**ID:** EVAL-NNN
**Category:** <micro-task | spec-driven | analysis | circuit-breaker | tdd-enforcement>
**Difficulty:** <basic | intermediate | advanced>
**Created:** YYYY-MM-DD

---

## Input (User Prompt)

```
<The exact prompt/request that would be given to the agent>
```

## Context (Project State)

```
<Minimal project state needed: file tree, key file contents, config>
```

## Expected Behavior

### Mode Selection
- Expected Mode: <Analysis | Micro-Task | Maker-Checker | Spec-Driven Orchestration>
- Reasoning: <Why this mode is correct>

### Actions
1. <First expected action>
2. <Second expected action>
3. <...>

### Prohibited Actions
- <Things the agent must NOT do in this scenario>

## Acceptance Criteria

- [ ] <Criterion 1: e.g., "Agent does not modify any files in Analysis Mode">
- [ ] <Criterion 2: e.g., "Agent writes failing test before production code">
- [ ] <Criterion 3: e.g., "Agent does not claim environment limitations">

## Grading Notes

<How to evaluate partial credit, edge cases, or common failure modes>
