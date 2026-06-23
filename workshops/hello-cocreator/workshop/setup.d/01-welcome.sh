#!/usr/bin/env bash
# Per-session setup. Runs in the workshop session pod at start.
#
# Keep setup scripts to in-session, non-privileged work (writing files into
# the home dir, fetching small assets you control). Do NOT reach out to shared
# cluster services or registries — the OTM policy clamp + (Phase 1) network
# policy exist precisely to prevent that.
set -euo pipefail

mkdir -p "${HOME}/exercises"
cat > "${HOME}/exercises/README.md" <<'EOF'
# Exercises

This is your scratch area. Add files here from setup.d or let students create
them during the workshop.
EOF

echo "hello-cocreator setup complete for session ${SESSION_NAME:-unknown}"
