#!/usr/bin/env bash
set -euo pipefail
if ! command -v kubectl >/dev/null 2>&1; then
  echo "kubectl not installed"
  exit 1
fi
kubectl get nodes
kubectl get pods -A
