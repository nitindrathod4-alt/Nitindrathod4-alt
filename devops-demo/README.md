# End-to-End DevOps Demo

A small, recruiter-friendly workload that demonstrates the engineering path from source code to container and Kubernetes deployment.

## Flow

GitHub → CI Validation → Docker → Kubernetes

## Components

- Dockerfile for container packaging
- Kubernetes Deployment with 2 replicas
- Kubernetes ClusterIP Service
- GitHub Actions validation already included in the repository

## Production note

This demo contains deployment-ready manifests. No fake production endpoint or cloud status is claimed until an actual AWS/EKS environment is connected.
