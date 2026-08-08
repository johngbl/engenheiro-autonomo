# Backend Rules

> Distributed rule file for API/Domain/Infrastructure layer paths.
> Place in .claude/rules/backend.md or .cursor/rules/backend.md in target projects.

## Applies To
- `src/domain/**`
- `src/application/**`
- `src/infrastructure/**`
- `src/api/**`
- `src/routes/**`
- `src/services/**`
- `apps/api/**`
- `packages/core/**`

## Directives

1. **Layer Boundaries (Clean Architecture):**
   - Domain layer: ZERO imports from frameworks, ORMs, or external libraries.
   - Application layer: orchestrates domain logic; may define interfaces for infrastructure.
   - Infrastructure layer: implements interfaces defined by Application.
   - Never import Infrastructure directly into Domain.

2. **Error Handling:**
   - Use typed error hierarchies (custom error classes or result types).
   - Never swallow exceptions silently.
   - Log errors with context (request ID, user ID, operation name).
   - Return appropriate HTTP status codes with structured error bodies.

3. **Data Validation:**
   - Validate all external input at the boundary (controller/route level).
   - Use schema validation libraries (Zod, Joi, Pydantic, etc.).
   - Never trust client data; re-validate before critical operations.

4. **Database & Queries:**
   - No N+1 queries. Use eager loading or batching.
   - All queries parameterized (no string interpolation for SQL).
   - Migrations must be reversible (up AND down).
   - Index foreign keys and frequently-filtered columns.

5. **API Design:**
   - RESTful conventions or consistent GraphQL schema.
   - Version breaking changes.
   - Idempotency for mutation endpoints where applicable.
   - Pagination for list endpoints (cursor-based preferred).

6. **Concurrency & Async:**
   - Handle promise rejections explicitly.
   - Use connection pooling for DB connections.
   - Timeout all external API calls.
   - Implement retry with exponential backoff for transient failures.

7. **Security:**
   - Rate limiting on public endpoints.
   - Input sanitization before rendering (XSS prevention).
   - Parameterized queries only (SQL injection prevention).
   - Principle of least privilege for service accounts.
