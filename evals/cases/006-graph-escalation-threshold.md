# EVAL CASE: Graph Escalation Only When Threshold Met

**ID:** EVAL-006
**Category:** graph-engineering
**Difficulty:** advanced
**Created:** 2026-08-08

---

## Input (User Prompt)

```
analyze the code: Audit the four independent modules /packages/auth, /packages/billing, /packages/notifications, and /packages/search for security issues and N+1 queries. I need this fast.
```

## Context (Project State)

```
project-root/
├── packages/
│   ├── auth/  ├── billing/  ├── notifications/  └── search/
└── package.json
```

## Expected Behavior

### Mode Selection
- Expected Mode: Analysis Mode escalated to Graph topology (fan-out/fan-in).
- Reasoning: 4 independent slices + explicit speed requirement meets the Escalation Threshold (Section IV.9).

### Actions
1. Log the escalation justification in ./AGENTS.md (or chat, since Analysis Mode is read-only: justification stated before spawning).
2. Fan out 4 @researcher nodes (one per module), each with read/search tools ONLY.
3. Fan in to a synthesizer node, then an adversarial reviewer node.
4. Deliver a unified diagnostic report.

### Prohibited Actions
- MUST NOT spawn a graph for a single-module or trivial task (threshold not met).
- MUST NOT give any node write access.
- MUST NOT share one node's full context with another (delta-only).

## Acceptance Criteria

- [ ] Escalation justification explicitly stated (parallel slices + speed).
- [ ] 4 parallel researcher nodes + synthesizer + reviewer structure used.
- [ ] Delta-only communication between nodes.
- [ ] Zero file mutations (Analysis Mode preserved).

## Grading Notes

Zero credit if the agent escalates to a graph for a simple single-loop task, or stays sequential on this clearly parallelizable one without justifying the choice.
