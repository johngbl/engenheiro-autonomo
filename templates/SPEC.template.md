# SPECIFICATION: <Feature Name>

> Template for /specs/NNN-feature.md — Spec-Driven Development contract.
> Lifecycle: draft -> approved -> in_progress -> verified -> archived

**Status:** draft
**Created:** YYYY-MM-DD
**Author:** @architect persona
**Reviewers:** @auditor persona

---

## 1. Goal & Business Value

<What problem does this solve? What user/business outcome does it enable?>

## 2. Non-Goals (Out of Scope)

- <Explicitly list what this spec does NOT cover>
- <Prevents scope creep and sets boundaries>

## 3. Technical Architecture & Domain Layer Contracts

### Layer Responsibilities
| Layer | Responsibility | Key Interfaces |
|-------|---------------|----------------|
| Domain | <Pure entities, business rules> | <Interfaces> |
| Application | <Use cases, orchestration> | <Interfaces> |
| Infrastructure | <DB, APIs, external services> | <Interfaces> |
| Presentation | <UI, controllers, CLI> | <Interfaces> |

### Data Flow
<Describe the primary data flow through layers>

### External Dependencies
<APIs, services, libraries required>

## 4. Testable Acceptance Criteria & Golden Dataset Cases

| # | Given | When | Then | Test Type |
|---|-------|------|------|-----------|
| 1 | <precondition> | <action> | <expected result> | unit/integration/e2e |
| 2 | <precondition> | <action> | <expected result> | unit/integration/e2e |

## 5. Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|------------|
| <risk> | H/M/L | H/M/L | <mitigation> |

## 6. Definition of Done

- [ ] All acceptance criteria pass
- [ ] 3-Layer Evaluator: 0 errors, 0 warnings
- [ ] Headless UI screenshots verified (if UI task)
- [ ] Security scan clean (OWASP, secrets)
- [ ] Spec status updated to "verified"
