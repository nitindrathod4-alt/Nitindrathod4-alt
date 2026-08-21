# Incident Runbooks

## CrashLoopBackOff

`kubectl describe pod` → inspect events → `kubectl logs` → `kubectl logs --previous` → identify exit reason → fix configuration/application → redeploy → verify probes.

## ImagePullBackOff

Check image name/tag → registry visibility → pull credentials → node access → pod events → redeploy.

## Pending Pod

Inspect scheduler events → node capacity → resource requests → taints/tolerations → affinity rules → cluster capacity.

## 502 / 503

Check ingress/load balancer → service selector → endpoints → backend readiness → application logs → network policy/security boundaries.

## OOMKilled

Inspect memory usage → container limits → workload behavior → metrics → tune requests/limits → retest under representative load.

## Database Connectivity

Check configuration/secrets → DNS/service endpoint → network path → security rules → database health → application connection pool.

## Standard Response Loop

`ALERT → EVIDENCE → HYPOTHESIS → TEST → ROOT CAUSE → FIX → VERIFY → DOCUMENT → PREVENT`
