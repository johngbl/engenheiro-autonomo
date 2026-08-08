# Security Rules

> Distributed rule file for Auth/Crypto/Sensitive paths.
> Place in .claude/rules/security.md or .cursor/rules/security.md in target projects.

## Applies To
- `src/auth/**`
- `src/security/**`
- `src/middleware/auth*`
- `src/crypto/**`
- `**/secrets/**`
- `**/*.env*`
- Any file handling credentials, tokens, or PII

## Directives

1. **Secrets Management (Absolute):**
   - NEVER hardcode secrets, API keys, tokens, or passwords in source code.
   - All secrets via environment variables or secret manager.
   - `.env` files MUST be in `.gitignore`.
   - Never log secret values, even partially.
   - Scan diffs for accidental secret inclusion before commit.

2. **Authentication:**
   - Use established auth libraries/frameworks; never roll custom crypto.
   - JWT: short expiry (15min access, 7d refresh max), rotate refresh tokens.
   - Password hashing: bcrypt/scrypt/argon2 with appropriate cost factor.
   - Multi-factor authentication for admin/sensitive operations.
   - Session invalidation on password change.

3. **Authorization:**
   - Check authorization at EVERY endpoint, not just the UI.
   - Role-Based Access Control (RBAC) with principle of least privilege.
   - Row-Level Security (RLS) for multi-tenant data isolation.
   - Deny by default; explicitly allow.

4. **Input Security:**
   - Sanitize ALL user input before processing.
   - Content Security Policy (CSP) headers for web responses.
   - Validate file uploads (type, size, content inspection).
   - Prevent path traversal in file operations.

5. **Dependency Security:**
   - Run `npm audit` / `pip audit` / `cargo audit` as part of CI.
   - No dependencies with known critical CVEs.
   - Lock dependency versions (lockfiles committed).
   - Review new dependencies before adding (check maintenance status, download count).

6. **OWASP Top 10 Awareness:**
   - Injection: parameterized queries only.
   - Broken Auth: covered above.
   - Sensitive Data: encrypt at rest and in transit (TLS 1.3).
   - XXE: disable external entity processing in XML parsers.
   - Broken Access: covered in Authorization.
   - Security Misconfiguration: disable debug in production, remove default accounts.
   - XSS: output encoding, CSP.
   - Insecure Deserialization: avoid deserializing untrusted data.
   - Known Vulnerabilities: automated scanning.
   - Insufficient Logging: log security events, monitor for anomalies.

7. **Incident Preparedness:**
   - Log all auth failures with IP and timestamp.
   - Implement account lockout after N failed attempts.
   - Have a secret rotation procedure documented.
