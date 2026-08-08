# 🚀 Autonomous Engineer — Agentic Loop & Graph Engineering Meta-Skill

![Version](https://img.shields.io/badge/version-1.0.0-blue) ![License](https://img.shields.io/badge/license-MIT-green) [![skills.sh](https://img.shields.io/badge/skills.sh-johngbl%2Fautonomous--engineer-black)](https://skills.sh/johngbl/autonomous-engineer)

> **The definitive transition from "Vibe Coding" & Prompt Engineering to Agentic Loop & Context Engineering.**
> An enterprise, self-sufficient Meta-Skill that transforms coding agents (Claude Code, Hermes Agent, Cursor, Cline, Zed, Codex, Roo Code, OpenHands, Kilo Code, Aider, and 70+ more via [skills.sh](https://skills.sh)) into Staff/Principal-level autonomous software engineers.

---

## 💡 Why Does This Repository Exist?

Sending manual prompts turn-by-turn in chat UIs is an obsolete bottleneck. Modern AI-assisted software development requires **Context Engineering**, **Spec-Driven Development (SDD)**, and **Evaluator-Optimizer Loops**.

The **Autonomous Engineer** is an open-source manifesto and orchestration protocol that equips coding agents to:

1. **Execute Zero-Prompt Ecosystem Auto-Provisioning:** Automatically detect stack requirements and install missing Domain Skills, MCP servers, test runners, or headless browser binaries locally within the project sandbox.
2. **Practice Minimalist Engineering:** Write minimal, performant, and clean production code by reusing existing codebase abstractions and native language/browser APIs.
3. **Enforce Spec-Driven Development (SDD):** Formulate structured `/specs/` with lifecycle states (`draft → approved → in_progress → verified → archived`) before modifying production code.
4. **Prevent API & Package Hallucinations (Context7 / MCP):** Validate packages, schemas, and framework APIs against official documentation indices before importing.
5. **Enforce Strict TDD with the Deletion Rule (Superpowers):** Require a failing test *prior* to writing production code. If production code is written first, the agent is forced to delete it and restart with the test.
6. **Eliminate AI Visual Slop (Frontend Design):** Require intentional art direction and verify visual UI via headless browser screenshots rendered to disk.
7. **Run 3-Layer Evaluator-Optimizer Loops with TextGrad:** Execute automated validation pipelines with failure-gradient classification and plan recalibration, plus a 5-iteration Circuit Breaker.
8. **Self-Evaluate via Evals-Driven Development (EDD):** Validate the agent's own behavior against a golden dataset of test cases.
9. **Learn Across Projects via Procedural Memory:** Distill debugging lessons into a structured, searchable registry consulted before every non-trivial task.
10. **Guard Against Comprehension Debt:** Enforce the Human Comprehension Guardrail — code must remain reviewable by the team, not just pass CI.
11. **Minimize Tool Surface:** Inject only the tools strictly necessary per sub-task, reducing the error surface for wrong tool selection.
12. **Pre-Flight Viability Checks:** Answer 4 gate questions (harness strength, feedback speed, stop condition, workload) before entering any long autonomous loop.
13. **Orchestrate Graph Engineering Topologies:** Escalate from single loops to directed acyclic graphs of specialized agents (G = V, E) with fan-out/fan-in, delta-only communication, and graceful node degradation.
14. **Preserve Human Comprehension (Light/Dark Factory):** Default to Light Factory with natural-language summaries; Dark Factory requires explicit opt-in + mandatory Code Sampling (1 in 5 PRs human-reviewed).
15. **Treat External Content as Untrusted Data:** Enforce an Untrusted Content Boundary against indirect prompt injection, a curated Provisioning Trust Chain, and Guardrail Precedence — audited by Snyk, Socket, and Gen Agent Trust Hub on skills.sh.

---

## 🏗️ Repository Architecture (Motor + Factory)

```
autonomous-engineer/
├── SKILL.md                  <- THE MOTOR: immutable, versioned, evolves only by release
├── README.md
├── LICENSE                   <- MIT
├── CHANGELOG.md              <- Version traceability
├── .gitignore
├── setup.sh                  <- One-command bootstrap (bash)
├── setup.ps1                 <- One-command bootstrap (PowerShell/Windows)
│
├── .github/
│   └── workflows/
│       └── evals.yml         <- EDD CI Gate: structural checks + behavioral review checklist
│
├── registry/                 <- LIVING LAYER (updatable without touching the motor)
│   ├── mcp-servers.md        <- MCP server catalog + provisioning protocol
│   ├── domain-skills.md      <- Known skills + install commands
│   ├── design-references.md  <- Awwwards, Three.js, GSAP, Lenis, Shadcn, etc.
│   └── memory-lessons.md     <- Inter-project procedural memory
│
├── templates/                <- SCAFFOLDS instantiated in target projects
│   ├── AGENTS.template.md    <- State tracking template
│   ├── SPEC.template.md      <- Spec-Driven specification template
│   ├── eval-case.template.md <- Golden dataset case template
│   └── rules/
│       ├── frontend.md       <- Distributed rules for UI paths
│       ├── backend.md        <- Distributed rules for API/Domain paths
│       └── security.md       <- Distributed rules for Auth/Crypto paths
│
└── evals/                    <- EDD: validates the skill's own behavior
    ├── README.md             <- How to add/run golden cases
    └── cases/                <- 9 golden behavioral test cases
```

**Design Principle:** `SKILL.md` (the motor) is immutable between releases. It instructs the agent to *consult* `registry/` on demand and *instantiate* `templates/` in the target project. Updating references = editing a registry file. Updating the motor = versioned release with changelog. Nothing mixes.

---

## 🔥 Core Pillars (v1.0)

| # | Pillar | Description |
|---|--------|-------------|
| 1 | **Context Engineering** | Targeted symbol-graph navigation, Context7/MCP doc anchoring, zero context rot |
| 2 | **Spec-Driven Development** | Lifecycle-managed specs with acceptance criteria before code |
| 3 | **3-Layer Evaluator + TextGrad** | Linter → Types/Security → Tests/UI, with failure-gradient classification and plan recalibration |
| 4 | **Strict TDD + Deletion Rule** | Failing test first or production code gets deleted |
| 5 | **Zero-Prompt Auto-Provisioning** | Skills, MCPs, test runners, headless browsers — all installed silently |
| 6 | **Multi-Agent Orchestration** | 4 personas with speculative model routing + Git Worktrees + A2A protocol |
| 7 | **Evals-Driven Development** | Golden dataset validates agent behavior; trajectory recording for CI gates |
| 8 | **Procedural Memory** | Structured inter-project lessons consulted before debugging |
| 9 | **Ephemeral Environment Tiering** | Local sandbox default; micro-VM escalation for high-risk operations |
| 10 | **Rigid Workspace Sandboxing** | Ban on destructive git, unvetted scripts, secrets exposure |
| 11 | **Human Comprehension Guardrail** | Code must remain reviewable; green CI + black-box code = defect |
| 12 | **Minimal Tool Surface** | Only necessary tools per sub-task; persona toolsets scoped |
| 13 | **Pre-Flight + Token Budget** | 4 viability questions before loops; 3x token ceiling with escalation |
| 14 | **Graph Engineering (G=V,E)** | Multi-agent DAG topology with fan-out/fan-in, delta-only A2A, node isolation |
| 15 | **Escalation Threshold** | Explicit rules for when to go from single loop to graph (>300k tokens, parallel need) |
| 16 | **Light/Dark Factory + Code Sampling** | Human oversight by default; Dark Factory opt-in with 1-in-5 PR review mandate |
| 17 | **Open Loop Floor** | Mechanical validation floor for subjective tasks; max 3 iterations anti-slop |

---

## ⚙️ Execution Flow

```
                    [ User Requirement / Prompt ]
                                 │
                                 ▼
    ┌──────────────────────────────────────────────────────────┐
    │ PHASE 0: Context Engineering & Auto-Provisioning         │
    │ • Zero-Prompt Skill/MCP/Tool Setup                       │
    │ • Distributed Rules & Memory-Lessons Alignment           │
    │ • Clarification Gate (max 3 questions if ambiguous)      │
    │ • Pre-Flight Checklist (4 viability questions)           │
    └────────────────────────────┬─────────────────────────────┘
                                 │
     ┌───────────────────────────┼───────────────────────────┐
     ▼                           ▼                           ▼
[ Analysis Mode ]        [ Micro-Task Mode ]       [ Spec-Driven Mode ]
• Read-Only              • Point Edits < 5 min     • /specs/ + AGENTS.md
• Planning/Discussion    • Direct Solo Loop        • Multi-Agent Personas
• Zero Code Changes      • Local Verification      • Worktrees + A2A
                                                             │
                                                             ▼
                                                   ┌───────────────────┐
                                                   │ PHASE 2: TDD +    │
                                                   │ Art Direction +   │
                                                   │ Clean Architecture│
                                                   └─────────┬─────────┘
                                                             │
                                                             ▼
                                                   ┌───────────────────┐
                                                   │ PHASE 3: 3-Layer  │
                                                   │ Evaluator +       │
                                                   │ TextGrad + CB     │
                                                   └─────────┬─────────┘
                                                             │
                                                             ▼
                                                   ┌───────────────────┐
                                                   │ PHASE 4-5: Audit, │
                                                   │ EDD, Memory &     │
                                                   │ DoD (LOCAL Commit)│
                                                   └───────────────────┘
```

---

## 🛠️ Installation Guide

### 0. Auto-Install (recommended — any OS)

```bash
npx skills add johngbl/autonomous-engineer --yes --global
```

Requires only Node.js/npx (Windows, macOS, Linux). The [skills.sh](https://skills.sh) CLI (package: [`skills`](https://www.npmjs.com/package/skills) by Vercel Labs) clones the repo, detects your installed agents (Claude Code, Zed, Cursor, Codex, Cline, Roo Code, Gemini CLI, and 70+ more), and installs the **full skill** (`SKILL.md` + `registry/` + `templates/`) into each agent's global skills directory. Use `--copy` if symlinks are unsupported, or drop `--global` for a project-scoped install.

> The repo is also browsable at [skills.sh/johngbl/autonomous-engineer](https://skills.sh/johngbl/autonomous-engineer). Skills.sh *packs* are optional and distribute only the `SKILL.md` — prefer the direct GitHub install above for the complete experience.

### Manual Install (fallback)

### 1. Claude Code (Official Anthropic CLI)
```bash
mkdir -p .claude/skills/autonomous-engineer
cp SKILL.md .claude/skills/autonomous-engineer/SKILL.md
cp -r registry/ .claude/skills/autonomous-engineer/registry/
cp -r templates/ .claude/skills/autonomous-engineer/templates/
```

### 2. Zed Editor (Global Skill)
```bash
mkdir -p ~/.agents/skills/autonomous-engineer
cp SKILL.md ~/.agents/skills/autonomous-engineer/SKILL.md
cp -r registry/ ~/.agents/skills/autonomous-engineer/registry/
cp -r templates/ ~/.agents/skills/autonomous-engineer/templates/
```

### 3. Cline / Roo Code (VS Code Extensions)
```bash
mkdir -p .agents/skills/autonomous-engineer
cp SKILL.md .agents/skills/autonomous-engineer/SKILL.md
cp -r registry/ .agents/skills/autonomous-engineer/registry/
cp -r templates/ .agents/skills/autonomous-engineer/templates/
```

### 4. Cursor / Windsurf
```bash
mkdir -p .agents/skills/autonomous-engineer   # Cursor
cp SKILL.md .agents/skills/autonomous-engineer/SKILL.md
cp -r registry/ .agents/skills/autonomous-engineer/registry/
cp -r templates/ .agents/skills/autonomous-engineer/templates/

# Windsurf uses .windsurf/skills/ instead:
mkdir -p .windsurf/skills/autonomous-engineer
cp SKILL.md .windsurf/skills/autonomous-engineer/SKILL.md
```

### 5. Codex App (OpenAI)
```bash
mkdir -p .codex/skills/autonomous-engineer
cp SKILL.md .codex/skills/autonomous-engineer/SKILL.md
cp -r registry/ .codex/skills/autonomous-engineer/registry/
cp -r templates/ .codex/skills/autonomous-engineer/templates/
```

> **Note:** The `registry/` and `templates/` directories must be co-located with `SKILL.md` so the agent can consult them during execution. They are seeded into the target project if missing.

### Quick Start (Bootstrap a Target Project)

Instead of manually copying files, use the bootstrap script (bash or PowerShell):

```bash
# Linux / macOS / Git Bash:
./setup.sh /path/to/my-project

# Windows (PowerShell):
.\setup.ps1 C:\path\to\my-project
```

This creates the full AI-ready workspace skeleton (`.claude/rules/`, `.claude/registry/`, `specs/`, `evals/cases/`, `.tmp/`) and seeds templates + registry using `cp -n` (never overwrites existing files).

---

## 💻 Daily Usage Workflows

Trigger your agent using standard natural language requests. The protocol automatically routes the task to the appropriate architecture mode.

### Example 1: Complex Spec-Driven Feature (Orchestration Mode)
> **Prompt:** `create the feature: Multi-tenant authentication module with Role-Based Access Control (RBAC) and Stripe billing integration.`

The agent auto-provisions missing domain skills, generates `/specs/001-rbac-billing.md`, initializes state tracking in `./AGENTS.md`, executes strict TDD across domain boundaries, and validates through all 3 evaluation layers.

### Example 2: Repro-First Bug Fix (Maker-Checker Mode)
> **Prompt:** `fix the bug: Coupon discounts are applying twice when checking out with multi-item carts.`

The agent writes a unit test that reproduces the duplicate discount bug and confirms it **fails**. It then modifies the domain logic until the test passes without altering the test assertion.

### Example 3: Quick Point Edit (Micro-Task Mode)
> **Prompt:** `quick fix: Fix the padding-top alignment on the user table header.`

The agent identifies a low-scope edit, updates the targeted file, runs the local linter/type-checker, and completes the task in seconds without creating state tracking files.

### Example 4: Architecture Review (Analysis Mode)
> **Prompt:** `analyze the code: Audit the /packages/core module for potential N+1 database queries and type safety risks.`

The agent operates in read-only mode, inspects the symbol graph, and delivers a detailed diagnostic report in chat without making file mutations.

### Example 5: Planning From Scratch (Analysis Mode → Clarification Gate)
> **Prompt:** `I want to build a SaaS platform for freelance invoicing.`

The agent asks at most 3 targeted questions (stack, auth, deployment), waits for answers, then produces a spec for approval before writing any code.

---

## 📊 Comparison: Vibe Coding vs. Loop Engineering

| Dimension | "Vibe Coding" / Chat Prompts | Autonomous Engineer |
| :--- | :--- | :--- |
| **Workflow Philosophy** | Prompt → Code → Hope | **Context → Reasoning → Validation → Code** |
| **Tool Provisioning** | Manual human installation | **Zero-Prompt Auto-Provisioning** (skills, MCPs, browsers) |
| **Specification** | Vague chat prompts | **Spec-Driven Development** with lifecycle states |
| **TDD Enforcement** | Optional / Ignored by AI | **Strict TDD + Enforced Deletion Rule** |
| **Package Validation** | Prone to API hallucinations | **Context7 & MCP Real-Time Validation** |
| **UI Verification** | "Trust me, it looks good" | **Headless Browser Screenshots** (`./.tmp/audit-ui/`) |
| **Validation Pipeline** | Single test check or manual | **3-Layer Evaluator + TextGrad Failure Gradients** |
| **Failure Handling** | Retry blindly or give up | **Gradient classification + plan recalibration + Circuit Breaker** |
| **Context Hygiene** | Dumps full files (Context Rot) | Symbol Graph & Bounded Line Range Inspections |
| **Safety & Git Rules** | Risk of destructive overwrites | **Workspace Sandboxing** (ban on `git push`, `reset --hard`) |
| **Agent Behavior QA** | None | **EDD Golden Dataset** (`evals/cases/`) |
| **Cross-Project Learning** | None | **Procedural Memory Registry** (`registry/memory-lessons.md`) |
| **Execution Isolation** | Local terminal only | **Ephemeral Micro-VM Tiering** (E2B/Daytona/Modal) |
| **Parallel Execution** | Sequential only | **Git Worktrees + A2A Protocol** |
| **Token Efficiency** | Full model for everything | **Speculative Model Routing + Prompt Caching** |
| **Cognitive Safety** | Code becomes black-box over time | **Comprehension Guardrail + Minimal Tool Surface + Pre-Flight** |
| **Multi-Agent Topology** | Single agent, sequential | **Graph Engineering (G=V,E)** with fan-out/fan-in + graceful degradation |
| **Human Oversight** | Full manual review or none | **Light/Dark Factory** with Code Sampling Rule |

---

## 📄 License

Distributed under the **MIT License**. Free to use, modify, and distribute for commercial and non-commercial projects.

---

<p align="center">
  <b>Developed for and by the Loop Engineering community.</b><br>
  <i>"Build the loop. Remain the engineer."</i>
</p>
