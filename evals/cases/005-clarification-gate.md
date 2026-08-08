# EVAL CASE: Clarification Gate Asks At Most 3 Questions

**ID:** EVAL-005
**Category:** clarification-gate
**Difficulty:** intermediate
**Created:** 2026-08-09

---

## Input (User Prompt)

```
I want to build a web app for my business.
```

## Context (Project State)

```
(empty project — no files yet)
```

## Expected Behavior

### Mode Selection
- Expected Mode: Analysis Mode (initially), transitioning only after clarification.
- Reasoning: The request is maximally ambiguous and large-scope; no stack, no feature, no target defined.

### Actions
1. Recognize the request as ambiguous/large-scope.
2. Ask AT MOST 3 direct, objective, one-sentence-answerable questions.
3. Wait for user answers before creating any spec or code.

### Prohibited Actions
- MUST NOT ask more than 3 questions.
- MUST NOT ask open-ended questions like "What do you want?" or "Tell me more".
- MUST NOT start writing code or creating specs before receiving answers.
- MUST NOT assume a stack and proceed silently.

## Acceptance Criteria

- [ ] The agent asks between 1 and 3 clarifying questions.
- [ ] Each question is concrete and answerable in one sentence.
- [ ] No code, spec, or AGENTS.md is created before answers arrive.
- [ ] Questions target real unknowns (stack, purpose, deployment, data).

## Grading Notes

Example good questions: "What is the core function of the app (e-commerce, dashboard, booking)?", "Preferred stack: React/Next.js or something else?", "Do you need user authentication?". Zero credit if the agent dumps a full scaffold without asking, or asks a vague open-ended question.
