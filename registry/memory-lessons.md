# Procedural Memory Registry

> Inter-project distilled lessons. Structured for retrieval before debugging.
> The agent MUST consult this file before attempting to solve a problem that matches known patterns.

## Lesson Format

Each lesson follows this structure:

### [LESSON-XXX] Short Title
- **Tags:** [category, framework, error-type]
- **Symptom:** What the user/agent observes
- **Root Cause:** The actual underlying issue
- **Solution:** The fix that worked
- **Prevention:** How to avoid it in future
- **Source Project:** Where this was learned
- **Date:** YYYY-MM-DD

## Consultation Protocol

1. Before debugging any non-trivial issue, search this file by tags/symptom.
2. If a match is found, apply the documented solution FIRST before exploring alternatives.
3. If the solution does not apply, proceed with standard debugging and record the new lesson.

## Lessons

### [LESSON-001] Headless Browser Binary Not Found
- **Tags:** [playwright, chromium, headless, CI, windows]
- **Symptom:** Agent claims "no browser available" or Playwright throws executable-not-found
- **Root Cause:** Playwright browsers are not bundled with the npm package; they require explicit installation
- **Solution:** Run `npx playwright install chromium --with-deps` before any headless test
- **Prevention:** Add browser installation to Phase 0 auto-provisioning checklist
- **Source Project:** UI verification task
- **Date:** 2026-07-15

### [LESSON-002] Git Worktree Detached HEAD on Windows
- **Tags:** [git, worktree, windows, path]
- **Symptom:** Worktree creation fails or agent loses track of working directory
- **Root Cause:** Windows path length limits and git worktree lock files
- **Solution:** Use short worktree paths (e.g., `.tmp/wt-<branch>`) and always `git worktree prune` after merge
- **Prevention:** Keep worktree names under 20 characters
- **Source Project:** Parallel orchestration experiment
- **Date:** 2026-07-20

### [LESSON-003] TypeScript strict Mode Breaking Existing Code
- **Tags:** [typescript, strict, migration, tsconfig]
- **Symptom:** Enabling `strict: true` produces hundreds of errors in legacy code
- **Root Cause:** Project was never migrated incrementally
- **Solution:** Enable strict flags one at a time (`strictNullChecks` first), fix per-module
- **Prevention:** New projects should start with strict from day one
- **Source Project:** Legacy migration
- **Date:** 2026-07-25

### [LESSON-004] ESM/CJS Import Mismatch in Node.js
- **Tags:** [node, esm, cjs, import, module]
- **Symptom:** `ERR_REQUIRE_ESM` or `Cannot use import statement outside a module`
- **Root Cause:** Mixed module systems in dependencies or missing `"type": "module"` in package.json
- **Solution:** Ensure consistent module type; use dynamic `import()` for CJS-to-ESM bridges
- **Prevention:** Always verify module type of new dependencies before importing
- **Source Project:** Backend API setup
- **Date:** 2026-08-01

### [LESSON-005] Tailwind CSS Purge Removing Dynamic Classes
- **Tags:** [tailwind, css, purge, dynamic-classes]
- **Symptom:** Styles work in dev but disappear in production build
- **Root Cause:** Dynamic class construction not detected by Tailwind's content scanner
- **Solution:** Use complete class names in safelist or restructure to use static class strings
- **Prevention:** Never construct Tailwind classes dynamically; use conditional full class names
- **Source Project:** Production deployment
- **Date:** 2026-08-05

## Maintenance Rules

- Add new lessons after every non-trivial debugging session.
- Keep lessons atomic: one problem, one solution.
- Review quarterly: archive lessons that are no longer relevant.
- Maximum 100 active lessons; beyond that, distill into higher-level patterns.
