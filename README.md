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

### 🔍 Request → Response | Inside the Application

| # | Stage | What happens |
|---|---|---|
| **01** | 👤 **Request** | User sends an HTTPS request to the application. |
| **02** | 🌐 **Edge** | DNS / ALB / Ingress receives traffic and routes it securely. |
| **03** | 🖥️ **Presentation** | Frontend serves the UI and sends API calls to the backend. |
| **04** | ⚙️ **Application** | Kubernetes-managed backend authenticates requests and runs business logic. |
| **05** | 🗄️ **Data** | Backend accesses the private database and persistent storage. |
| **06** | 🔄 **Response** | Database → API → Frontend → User. |

```text
👤 USER
   │ HTTPS
   ▼
┌────────────────────────────┐
│ 🌐 DNS / ALB / INGRESS     │  PUBLIC EDGE
└─────────────┬──────────────┘
              ▼
┌────────────────────────────┐
│ 🖥️ TIER 1 · PRESENTATION  │  FRONTEND
│ UI / HTML / JS             │
└─────────────┬──────────────┘
              │ API REQUEST
              ▼
┌────────────────────────────┐
│ ⚙️ TIER 2 · APPLICATION    │  BACKEND
│ Docker + Kubernetes        │
│ Auth + Business Logic      │
└─────────────┬──────────────┘
              │ PRIVATE DB QUERY
              ▼
┌────────────────────────────┐
│ 🗄️ TIER 3 · DATA           │  DATABASE
│ Persistent Storage         │
└─────────────┬──────────────┘
              │ DB RESPONSE
              ▼
         👤 USER RESPONSE
```

### 🧭 Layer-by-Layer Engineering

**🌐 Edge → Presentation** — HTTPS traffic enters through the public edge. Only the required application entry point is exposed; the database stays private.

**🖥️ Presentation → Application** — The frontend renders the UI and calls the backend API. Both layers can be versioned and released independently.

**⚙️ Application → Data** — Backend containers run under Kubernetes. The API handles authentication and business logic, then communicates with the database over private connectivity.

**🗄️ Data → Response** — The database returns data, the API builds the response, and the frontend renders the result back to the user.

---

### 🔐 Why This Architecture?

| Concern | Architecture decision | Result |
|---|---|---|
| 🔐 Security | Public edge → private app → private data | Smaller attack surface |
| 📈 Scalability | Independent tier scaling | Handles changing workloads |
| 🟢 Availability | Multiple application replicas | Better fault tolerance |
| 🧩 Maintainability | Separate UI / API / data responsibilities | Easier troubleshooting |
| 🚀 Deployment | Version tiers independently | Safer releases and rollback |
| 💾 Recovery | Persistent storage + backups | Better resilience |
| 📊 Observability | Health checks + logs + metrics | Faster diagnosis |

### 📈 Traffic Spike — What Changes?

```text
NORMAL
Frontend ×2 → Backend ×2 → Database

                       TRAFFIC SPIKE
                            │
                            ▼
                    ┌───────────────┐
                    │ LOAD BALANCER │
                    └───────┬───────┘
                            │
              ┌─────────────┼─────────────┐
              ▼             ▼             ▼
         ┌─────────┐   ┌─────────┐   ┌─────────┐
         │ API #1  │   │ API #2  │   │ API #3  │
         │  POD    │   │  POD    │   │  POD    │
         └────┬────┘   └────┬────┘   └────┬────┘
              └─────────────┼─────────────┘
                            ▼
                       ┌──────────┐
                       │ DATABASE │
                       └──────────┘
```

When an HPA-based Kubernetes setup is configured, the application tier can add replicas as workload increases. The database does **not** automatically scale just because more API pods exist; the data tier needs its own capacity, caching, read-replica or managed-database strategy.

### 🩺 Failure Scenario — One Backend Pod Dies

```text
                  SERVICE / LOAD BALANCER
                           │
              ┌────────────┼────────────┐
              ▼            ▼            ▼
           API #1        API #2        API #3
             ❌            ✅             ✅
                           │             │
                           └──────┬──────┘
                                  ▼
                             🗄️ DATABASE
                                  ✅

              RESULT → healthy replicas serve traffic
```

Health probes can mark the failed pod unavailable. Kubernetes can restart or replace it according to the workload configuration, while logs and metrics help engineers identify the root cause.

---

### 🔄 Complete Engineering Lifecycle

```text
💻 CODE
   │
   ▼
🐙 GITHUB
   │
   ▼
⚙️ CI VALIDATION
   ├── ShellCheck
   ├── Docker validation
   ├── Terraform validation
   └── Kubernetes validation
   │
   ▼
🐳 BUILD IMAGE
   │
   ▼
📦 IMAGE REGISTRY
   │
   ▼
☸️ KUBERNETES
   ├── Deploy
   ├── Service
   └── Scale
   │
   ▼
🩺 HEALTH CHECKS
   │
   ▼
📊 LOGS + METRICS
   │
   ▼
🚨 ALERT / INCIDENT
   │
   ▼
🔎 INVESTIGATE → 🔧 FIX → 🧪 TEST
   │
   └──────────────────→ 🚀 DEPLOY
```

### 🛡️ Security Boundary

```text
                 🌍 PUBLIC INTERNET
                         │
                         ▼
                  ┌─────────────┐
                  │ ALB / INGRESS│
                  └──────┬──────┘
                         │
                    PUBLIC EDGE
                         ▼
                  ┌─────────────┐
                  │  FRONTEND   │
                  └──────┬──────┘
                         │ PRIVATE
                         ▼
                  ┌─────────────┐
                  │  BACKEND    │
                  └──────┬──────┘
                         │ PRIVATE DB ACCESS
                         ▼
                  ┌─────────────┐
                  │  DATABASE   │
                  └─────────────┘

              🚫 DATABASE IS NOT PUBLIC
```

### 📊 Scaling & Reliability Matrix

| Tier | Scaling | Reliability | Primary goal |
|---|---|---|---|
| 🌐 Presentation | Load balancer + replicas / CDN | Multiple instances | Handle user traffic |
| ⚙️ Application | Kubernetes replicas + HPA | Probes + rolling updates | Handle API workload |
| 🗄️ Data | Managed DB + replicas / cache | Backups + recovery | Protect persistence |

### 🎯 Engineering Outcome

**Separate responsibilities → isolate security boundaries → scale the workload tier → protect persistent data → observe the system → recover quickly.**

> **Architecture note:** This is a deployment-ready target design. It does not claim that a live AWS/EKS production environment is currently connected.

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
