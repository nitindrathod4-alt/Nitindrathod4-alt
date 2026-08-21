<div align="center">
  <img src="./github-banner.png" width="100%" alt="DevOps profile banner" />
  <img src="./assets/devops-engineer-signature.svg" width="100%" alt="Engineering signature" />
</div>

<div align="center"><img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=24&pause=900&color=00BFFF&center=true&vCenter=true&width=850&lines=Cloud+%26+DevOps;AWS+%7C+Kubernetes+%7C+Docker+%7C+Terraform;CI%2FCD+%7C+Linux+%7C+Automation;Build+%E2%80%A2+Automate+%E2%80%A2+Deploy+%E2%80%A2+Scale" /></div>

<p align="center"><img src="https://komarev.com/ghpvc/?username=nitindrathod4-alt&label=PROFILE%20VIEWS&color=0e75b6&style=for-the-badge" /> <img src="https://img.shields.io/github/followers/nitindrathod4-alt?label=FOLLOWERS&style=for-the-badge" /> <img src="https://img.shields.io/github/stars/nitindrathod4-alt?label=STARS&style=for-the-badge" /></p>

<div align="center">
<img src="./assets/devops-control-center.svg" width="100%" alt="DevOps Control Center" />
<img src="./assets/deployment-center.svg" width="100%" alt="Deployment Center" />
<img src="./assets/profile-pulse.svg" width="100%" alt="Live profile analytics" />
</div>

---

<div align="center"><h1>👨‍💻 Cloud & DevOps</h1><p><b>Cloud Infrastructure • CI/CD • Containers • Kubernetes • Infrastructure as Code • Automation</b></p></div>

> **Automate what can be automated. Version what can be versioned. Monitor what can fail. Improve everything.**

## 🧰 Tech Stack
<div align="center"><img src="https://skillicons.dev/icons?i=aws,docker,kubernetes,terraform,jenkins,linux,git,github,bash,java,spring,nodejs,react,mongodb,maven&perline=8" alt="Technology stack" /></div>
<div align="center"><sub>☁️ Cloud • ⚙️ CI/CD • 🐳 Containers • ☸️ Orchestration • 🏗️ IaC • 🛡️ Security • 📊 Observability • 🤖 Automation</sub></div>

---

## 🏗️ 3-Tier Application Architecture
<div align="center"><img src="./assets/three-tier-architecture.svg" width="100%" alt="Three tier application architecture" /></div>

### 🔍 How It Works — Request to Response

**1️⃣ User Request** → A user opens the application and sends an HTTPS request.

**2️⃣ Entry Layer** → DNS/load balancer or ingress receives the request and routes it to the presentation tier. The public edge is the only layer exposed to users.

**3️⃣ Presentation Tier** → The frontend serves the UI. Static assets are delivered to the browser while API requests are forwarded to the backend service.

**4️⃣ Application Tier** → The backend API runs inside containers managed by Kubernetes. It authenticates requests, executes business logic and communicates with internal services.

**5️⃣ Data Tier** → The backend reaches the database through private connectivity. The database is not directly exposed to the internet.

**6️⃣ Response** → Database result → Backend API → Frontend → User.

```text
USER
  │
  │ HTTPS
  ▼
┌──────────────────────┐
│ DNS / ALB / INGRESS  │  ← Public Edge
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│ PRESENTATION TIER    │  ← Frontend
│ HTML / JS / UI       │
└──────────┬───────────┘
           │ API Request
           ▼
┌──────────────────────┐
│ APPLICATION TIER     │  ← Backend
│ Docker + Kubernetes  │
│ Auth + Business Logic│
└──────────┬───────────┘
           │ Private DB Query
           ▼
┌──────────────────────┐
│ DATA TIER            │  ← Database
│ Persistent Storage   │
└──────────┬───────────┘
           │
           ▼
       DB Response
           │
           ▼
      USER RESPONSE
```

### 🔐 Why This Architecture?

| Concern | Design |
|---|---|
| Security | Public edge separated from private application/data layers |
| Scalability | Frontend and backend can scale independently |
| Availability | Multiple application replicas can run behind a load balancer |
| Maintainability | UI, API and data responsibilities remain separated |
| Deployment | Each tier can be versioned and released independently |
| Recovery | Persistent data can use backups and recovery strategies |

### 📈 What Happens When Traffic Increases?

```text
NORMAL TRAFFIC
Frontend ×2  →  Backend ×2  →  Database

             TRAFFIC SPIKE
                  │
                  ▼
        Load Balancer distributes
                  │
        ┌─────────┼─────────┐
        ▼         ▼         ▼
     Backend   Backend   Backend
       Pod       Pod       Pod
        │         │         │
        └─────────┼─────────┘
                  ▼
               Database
```

With Kubernetes, the application tier can increase replicas based on workload. The database remains protected behind private access and should be scaled using an appropriate managed-database strategy rather than simply adding application pods.

### 🩺 Failure Scenario

```text
Frontend healthy
      │
      ▼
Backend Pod #1 ❌
Backend Pod #2 ✅  ─────→ Request continues
Backend Pod #3 ✅
      │
      ▼
Database ✅
```

If one backend pod fails, Kubernetes can remove the unhealthy pod from service and maintain traffic through healthy replicas. Health checks, logs and metrics then help identify the root cause.

### 🔄 Complete Engineering Lifecycle

```text
CODE
 ↓
GITHUB
 ↓
CI VALIDATION
 ├─ ShellCheck
 ├─ Docker validation
 ├─ Terraform validation
 └─ Kubernetes validation
 ↓
BUILD IMAGE
 ↓
IMAGE REGISTRY
 ↓
DEPLOY TO KUBERNETES
 ↓
HEALTH CHECKS
 ↓
LOGS + METRICS
 ↓
ALERT
 ↓
INVESTIGATE → FIX → TEST → DEPLOY AGAIN
```

> **Important:** This section documents the target architecture and engineering workflow. It does not claim that a live AWS/EKS production environment is currently connected.

### 🔐 Security Flow

```text
PUBLIC INTERNET
      │
      ▼
  ALB / INGRESS
      │
      ▼
┌──────────────┐
│ PUBLIC TIER  │  ← Frontend
└──────┬───────┘
       │ private network
       ▼
┌──────────────┐
│ PRIVATE TIER │  ← API / Backend
└──────┬───────┘
       │ private DB access
       ▼
┌──────────────┐
│ DATA TIER    │  ← Database
└──────────────┘
```

### 📈 Scaling Strategy

| Layer | Scaling Strategy | Main Goal |
|---|---|---|
| Presentation | Load balancing + replicas | Handle user traffic |
| Application | Kubernetes HPA + replicas | Handle API workload |
| Data | Managed DB / read replicas / backups | Reliability & persistence |

---

## 🏗️ Enterprise Architecture
<div align="center"><img src="./assets/enterprise-architecture.svg" width="100%" alt="Enterprise architecture" /></div>

## 🔄 End-to-End CI/CD
<div align="center"><img src="./assets/cicd-lifecycle.svg" width="100%" alt="CI/CD lifecycle" /></div>

## ☁️ AWS Cloud Architecture
<div align="center"><img src="./assets/aws-cloud.svg" width="100%" alt="AWS cloud architecture" /></div>

## ☸️ Kubernetes Production Lifecycle
<div align="center"><img src="./assets/kubernetes-lifecycle.svg" width="100%" alt="Kubernetes lifecycle" /></div>

## 🚀 Project Portfolio
<div align="center"><img src="./assets/project-showcase.svg" width="100%" alt="Project showcase" /></div>

## 🧠 Problem-Solving Lifecycle
<div align="center"><img src="./assets/devops-problem-solving.svg" width="100%" alt="Problem-solving lifecycle" /></div>

## 🛡️ DevSecOps Roadmap
<div align="center"><img src="./assets/devsecops-roadmap.svg" width="100%" alt="DevSecOps roadmap" /></div>

---

## 📈 GitHub Analytics
<div align="center"><img height="180" src="https://github-readme-stats.vercel.app/api?username=nitindrathod4-alt&show_icons=true&theme=tokyonight&hide_border=true&rank_icon=github&include_all_commits=true" /> <img height="180" src="https://github-readme-streak-stats.herokuapp.com/?user=nitindrathod4-alt&theme=tokyonight&hide_border=true" /></div>
<div align="center"><img src="https://github-readme-activity-graph.vercel.app/graph?username=nitindrathod4-alt&theme=tokyo-night&hide_border=true&area=true" width="100%" /></div>

## 🏆 GitHub Trophy Wall
<div align="center"><img src="https://github-profile-trophy.vercel.app/?username=nitindrathod4-alt&theme=tokyonight&no-frame=true&no-bg=true&margin-w=8&column=6" /></div>

## 📊 Live Profile Automation
<div align="center"><img src="./assets/repository-intelligence.svg" width="100%" alt="Repository intelligence" /></div>

---

## 📌 Engineering Principles
<div align="center"><b>AUTOMATION FIRST</b> • <b>INFRASTRUCTURE AS CODE</b> • <b>SECURITY BY DESIGN</b> • <b>OBSERVABILITY</b> • <b>RELIABILITY</b> • <b>CONTINUOUS IMPROVEMENT</b></div>

## 📫 Connect
<div align="center"><a href="mailto:nitindrathod4@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" /></a> <a href="https://github.com/nitindrathod4-alt"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" /></a></div>

<div align="center"><h3>⚡ LEARN • BUILD • AUTOMATE • DEPLOY • SCALE ⚡</h3></div>

---

<div align="center"><img src="./github-banner.png" width="100%" alt="DevOps profile banner" /></div>
