# Engineering Decision Log

## Why a 3-Tier Architecture?
Separating presentation, application and data responsibilities improves security boundaries, independent scaling and maintainability.

## Why Kubernetes?
Kubernetes provides declarative deployments, service discovery, health checks, rollout/rollback controls and workload scaling.

## Why Terraform?
Infrastructure is versioned as code so changes can be reviewed, reproduced and validated before deployment.

## Why Private Data Access?
The database should not be directly exposed to the public internet. Application services access it through controlled private networking.

## Why CI/CD Validation?
Automated validation catches configuration, infrastructure and application issues before deployment.

## Why Observability?
Logs and metrics provide evidence for troubleshooting instead of relying on assumptions during incidents.

---

> These decisions document the engineering approach represented by this portfolio. They are not a claim that every component is currently running in production.
