# CPOT – Cross‑Platform Ops Toolkit

CPOT (Cross‑Platform Ops Toolkit) is a PowerShell module focused on **IT Operations** and **Network Automation** across Windows, Linux, and mixed environments.

The goal of this project is to build a **clean, well‑tested, well‑documented PowerShell module** that demonstrates real‑world, enterprise‑ready PowerShell practices while remaining practical for daily operations work.

This repository is intentionally being built **incrementally**. Early versions focus on structure, quality, and correctness over feature volume.

---

## Project Goals

- Cross‑platform PowerShell support (PowerShell 7+)
- IT operations automation (inventory, health checks, orchestration)
- Network automation foundations (CLI wrapping, connectivity, reporting)
- Strong module hygiene:
  - Clear public vs private functions
  - Pester tests
  - Proper help (`Get‑Help`, PlatyPS)
  - Git‑based workflow
- Designed to be extended collaboratively over time

---

## Current Status

- **Version:** v0.1 (early development)
- **State:** Repository scaffolding and foundational setup
- **Not production‑ready**

---

## Planned Capabilities (High Level)

- System and OS inventory (Windows / Linux)
- Network and connectivity inspection
- Remote command execution (WinRM / SSH)
- Structured output for reporting (objects, JSON, CSV)
- Secure credential handling
- Extensible design for future modules and integrations

---

## Repository Structure

```
CPOT
├─ src
│  └─ CPOT
│     ├─ Public        # User-facing functions
│     ├─ Private       # Internal helper functions
│     ├─ en-US         # Module help files
│     ├─ CPOT.psd1     # Module manifest
│     └─ CPOT.psm1     # Module entry point
│
├─ tests
│  └─ unit             # Pester unit tests
│
├─ docs                # Design notes and documentation
├─ tools               # Build / release tooling
└─ README.md
```

---

## Development Principles

- Functions return **objects**, not formatted text
- Public API is intentional and minimal
- Private helpers are not exported
- Tests and documentation are first‑class citizens
- Decisions are documented as the module evolves

---

## License

To be determined.

---
