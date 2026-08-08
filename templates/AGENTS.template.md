# Task State: <Requirement Name>

> Template for ./AGENTS.md — Root Single Source of Truth & Memory State.
> The agent instantiates this file in the target project during Spec-Driven or Maker-Checker modes.

## Environment & Active Rules
- Stack & Architecture Layout: <Detected Architecture>
- Active Distributed Rules: <Loaded Path Rules from .claude/rules/>
- Commands:
  - Linter: `<linter-cmd>`
  - Tests: `<test-cmd>`
  - Build: `<build-cmd>`
  - Type Check: `<typecheck-cmd>`
- Quality Gate: <100% Type-Check Pass, Zero Linter Warnings, Headless Screenshot Verified>

## Atomic Execution Plan (2-5 Min Scope Per Task)
- [ ] Sub-task 1: <Clear, test-verifiable objective>
- [ ] Sub-task 2: <Clear, test-verifiable objective>
- [ ] Sub-task 3: <Clear, test-verifiable objective>

## Loop Journal & Procedural Memory
- Iteration 1: Status [<Success|Failure>] -> <Diagnosis & Action Taken>
- Iteration 2: Status [<Success|Failure>] -> <Diagnosis & Action Taken>

## Discovered Lessons (to distill into registry/memory-lessons.md)
- <Pattern discovered during execution>

## Blockers & Circuit Breaker Log
- <If any sub-task hit 5 consecutive failures, document here>
