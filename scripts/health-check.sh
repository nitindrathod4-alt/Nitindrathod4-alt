#!/usr/bin/env bash
set -euo pipefail
URL="${1:-https://github.com/nitindrathod4-alt}"
if curl -fsSL --max-time 10 "$URL" >/dev/null; then
  echo "HEALTHY | $URL"
else
  echo "UNHEALTHY | $URL"
  exit 1
fi
