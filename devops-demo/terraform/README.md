# AWS / Terraform Layer

This directory is intentionally safe to run in a fresh checkout: it configures the AWS provider and exposes the target region without creating billable infrastructure.

## Production path

When an AWS account and credentials are intentionally connected, extend this layer with versioned modules for VPC, IAM, ALB, EKS/EC2 and observability. Keep secrets in GitHub Actions Secrets or AWS OIDC; never commit credentials.

```text
Terraform → VPC → Compute → Container Platform → Load Balancer → Observability
```
