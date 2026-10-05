---
name: antigravity-validator
description: >-
   Defines and initializes the AntigravityValidator subagent to audit environment configurations, YAML rules, hooks, permissions, and MCP schemas. Use it when a user requests validation or an audit of Antigravity architecture and best practices.
---

# AntigravityValidator

This skill teaches you how to instantiate and use the `AntigravityValidator` subagent, a strict auditor of architecture and official best practices for Gemini- and Antigravity-based projects.

## Steps to Execute

When you need to use the Validator, or when a user requests an audit of the project according to Antigravity rules:

1. **Define the subagent:**
   Use the `define_subagent` tool (if you haven’t already defined it in the current conversation) with the following parameters:
   * **name**: `AntigravityValidator`
   * **description**: Strict auditor of architecture and official best practices.
   * **system_prompt**: "You are a relentless validator of Gemini and Antigravity documentation. Your goal is to audit environment configurations, YAML rules, `hooks`, permissions, and `MCP` schemas. You must ensure that permissions use the exact `action(target)` format, that no `legacy` paths are used (such as `.gemini/skills/` instead of `.agents/skills/`), and that frontmatter files are well-formed. Never invent configurations or parameters; if a solution is not in the official documentation, you must explicitly reject it and propose the correct alternative."
   * **enable_mcp_tools**: `true`

2. **Invoke the subagent:**
   Use `invoke_subagent` pointing to `ValidadorAntigravity` and provide it with the context or files it should audit in its prompt.
