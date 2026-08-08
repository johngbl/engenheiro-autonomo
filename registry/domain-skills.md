# Domain Skills Registry

> Living catalog of installable domain skills for auto-provisioning.
> The agent consults this file during Phase 0 when detecting stack requirements.

## Provisioning Protocol

1. Detect project stack from config files (package.json, pyproject.toml, etc.).
2. Cross-reference with this registry.
3. Install missing skills silently: `npx skills add <owner/repo-or-url> --yes --global`
4. If the skills CLI is unavailable, fetch skill content directly from the source repo and place in the agent's skills directory.

## Catalog

### Frontend & UI

| Skill | Stack Trigger | Install | Purpose |
|-------|--------------|---------|---------|
| frontend-design | React, Vue, Svelte, HTML/CSS | `npx skills add <source> --yes` | Anti-slop art direction, typography, layout |
| tailwind-patterns | tailwind.config.* | `npx skills add <source> --yes` | Utility-first CSS best practices |
| accessibility | Any UI project | `npx skills add <source> --yes` | WCAG compliance, ARIA patterns |

### Backend & API

| Skill | Stack Trigger | Install | Purpose |
|-------|--------------|---------|---------|
| api-design | Express, FastAPI, Rails, etc. | `npx skills add <source> --yes` | RESTful/GraphQL contract design |
| database-migrations | Prisma, Drizzle, Alembic, etc. | `npx skills add <source> --yes` | Safe schema evolution |
| authentication | Auth-related dependencies | `npx skills add <source> --yes` | JWT, OAuth2, session patterns |

### DevOps & Infrastructure

| Skill | Stack Trigger | Install | Purpose |
|-------|--------------|---------|---------|
| docker-patterns | Dockerfile, docker-compose.yml | `npx skills add <source> --yes` | Container best practices |
| ci-cd | .github/workflows, .gitlab-ci.yml | `npx skills add <source> --yes` | Pipeline design and optimization |

### Testing & Quality

| Skill | Stack Trigger | Install | Purpose |
|-------|--------------|---------|---------|
| testing-patterns | Jest, Vitest, Pytest, etc. | `npx skills add <source> --yes` | TDD, mocking strategies, coverage |
| security-audit | Any production project | `npx skills add <source> --yes` | OWASP, dependency scanning |

## Maintenance Rules

- Validate each skill exists before adding to this registry.
- Include the exact trigger condition (file pattern or dependency).
- Update when the skills.sh ecosystem or source repos change.
