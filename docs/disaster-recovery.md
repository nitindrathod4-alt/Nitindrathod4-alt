# Disaster Recovery & Resilience Model

## Recovery Flow

`BACKUP → DETECT FAILURE → ISOLATE → RESTORE → VALIDATE → RECOVER TRAFFIC → MONITOR → IMPROVE`

## Recovery Concerns

| Area | Engineering approach |
|---|---|
| Data | Backups, restore validation and retention strategy |
| Application | Replicas, health probes and controlled rollout/rollback |
| Infrastructure | Infrastructure as Code and reproducible configuration |
| Secrets | Managed secret storage and rotation strategy |
| Monitoring | Health, errors, latency and alerting |
| Recovery | Documented runbook and recovery validation |

## RPO / RTO

- **RPO:** How much data loss is acceptable after a failure.
- **RTO:** How quickly the service should be restored.

Actual RPO/RTO targets depend on the application's business requirements and are not assumed by this portfolio.

## Failure Scenarios

### Application Failure
Healthy replicas continue serving traffic while the unhealthy workload is investigated and replaced.

### Infrastructure Failure
Recreate required infrastructure from version-controlled Terraform configuration and restore persistent data according to the recovery plan.

### Data Failure
Use validated backups/restores and verify application connectivity before returning traffic to normal operation.

> This is a deployment-ready recovery model, not a claim of a currently active production disaster-recovery environment.
