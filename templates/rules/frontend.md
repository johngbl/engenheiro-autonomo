# Frontend Rules

> Distributed rule file for UI/Presentation layer paths.
> Place in .claude/rules/frontend.md or .cursor/rules/frontend.md in target projects.

## Applies To
- `src/components/**`
- `src/pages/**`
- `src/app/**`
- `src/features/**/ui/**`
- `apps/web/**`

## Directives

1. **Component Architecture:**
   - One component per file. Named exports preferred.
   - Props interface co-located with component.
   - No business logic in presentation components; delegate to hooks/services.

2. **Styling:**
   - Use project's existing styling solution (Tailwind, CSS Modules, styled-components).
   - Never mix styling paradigms within the same feature.
   - Responsive-first: mobile breakpoint as default, scale up.

3. **Accessibility (Non-Negotiable):**
   - All interactive elements must be keyboard-navigable.
   - Semantic HTML before ARIA. ARIA only when semantic HTML is insufficient.
   - Color contrast ratio >= 4.5:1 for text.
   - All images have meaningful alt text or empty alt for decorative.

4. **State Management:**
   - Local state for UI-only concerns.
   - Global state only for shared domain data.
   - No prop drilling beyond 2 levels; use context or state library.

5. **Performance:**
   - Lazy-load routes and heavy components.
   - Memoize expensive computations.
   - Images: use modern formats (WebP/AVIF), lazy loading, explicit dimensions.

6. **Anti-Slop Enforcement:**
   - No default blue/purple button gradients without explicit design direction.
   - No generic card grids without intentional layout reasoning.
   - Typography must have clear hierarchy (at least 3 distinct levels).
