# MCP Servers Registry

> Living catalog of Model Context Protocol servers. Updated independently of SKILL.md.
> The agent consults this file during Phase 0 auto-provisioning.

## Provisioning Protocol

When a task requires an MCP server not yet configured:
1. Check if `.mcp/mcp.json` exists in the project root.
2. If the required server is missing, add its entry to `.mcp/mcp.json`.
3. Alternatively, invoke the harness CLI: `claude mcp add <server-name> -- <command> [args...]`
4. Verify connectivity before proceeding with the task.

## Catalog

### Documentation & Knowledge

| Server | Purpose | Install Command | Notes |
|--------|---------|-----------------|-------|
| context7 | Official library docs lookup | `npx -y @upstash/context7-mcp` | Primary anti-hallucination anchor |
| fetch | Web content fetching | `npx -y @modelcontextprotocol/server-fetch` | Reference server (MCP official) |

### Code & Repository

| Server | Purpose | Install Command | Notes |
|--------|---------|-----------------|-------|
| filesystem | Secure file operations | `npx -y @modelcontextprotocol/server-filesystem <path>` | Configurable access controls |
| git | Git repo manipulation | `uvx mcp-server-git --repository <path>` | Read, search, manipulate |
| memory | Persistent knowledge graph | `npx -y @modelcontextprotocol/server-memory` | Cross-session memory |
| sequential-thinking | Structured problem solving | `npx -y @modelcontextprotocol/server-sequential-thinking` | Dynamic reasoning chains |

### Utilities

| Server | Purpose | Install Command | Notes |
|--------|---------|-----------------|-------|
| time | Timezone conversion | `npx -y @modelcontextprotocol/server-time` | Reference server |
| everything | Test/demo server | `npx -y @modelcontextprotocol/server-everything` | Prompts, resources, tools |

### Deprecated / Archived (do NOT auto-provision)

The following were removed from the official MCP reference servers (now in `servers-archived`):
- PostgreSQL, SQLite, GitHub, GitLab, Puppeteer, Brave Search, Slack, Redis, Sentry, Google Drive, Google Maps, EverArt, AWS KB Retrieval

If a task requires one of these, prefer community-maintained alternatives or harness-native equivalents. Log the substitution in `./AGENTS.md`.

## Maintenance Rules

- Add new entries as they are validated in real projects.
- Never remove entries without noting deprecation reason.
- Each entry must have a verified install command (no hallucinated packages).
