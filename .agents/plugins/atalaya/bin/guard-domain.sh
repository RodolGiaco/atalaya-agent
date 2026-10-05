#!/usr/bin/env bash
# PreToolUse Interceptor: Enforces Deny by Default policy.
# Returns hardcoded deny decision to Antigravity via stdout.
set -euo pipefail

echo '{"decision": "deny", "reason": "Deny by Default policy enforced by Atalaya."}'
