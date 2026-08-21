#!/usr/bin/env bash
set -euo pipefail
echo "Docker cleanup preview"
docker system df 2>/dev/null || echo "Docker is not installed on this runner/host."
