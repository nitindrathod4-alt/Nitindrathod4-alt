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

### 🔍 How the 3-Tier Project Works

```text
                         👤 USER
                           │
                           ▼
                ┌─────────────────────┐
                │  TIER 1             │
                │  PRESENTATION       │
                │  Frontend / ALB     │
                └──────────┬──────────┘
                           │ HTTP/HTTPS
                           ▼
                ┌─────────────────────┐
                │  TIER 2             │
                │  APPLICATION        │
                │  API / Backend      │
                │  Docker + Kubernetes│
                └──────────┬──────────┘
                           │ DB Query
                           ▼
                ┌─────────────────────┐
                │  TIER 3             │
                │  DATA               │
                │  Database / Storage  │
                └─────────────────────┘
```

**Request flow:** User → Load Balancer/Ingress → Frontend → Backend API → Database → Response.

**Why 3-tier?** Each layer has a separate responsibility, can be secured independently, and can scale independently. The application tier can scale horizontally without exposing the database directly to the public network.

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

## 🔄 End-to-End Delivery of the 3-Tier App

```text
DEVELOPER
   │
   ▼
GITHUB
   │
   ▼
CI VALIDATION
   │
   ├── ShellCheck
   ├── Docker validation
   ├── Terraform validation
   └── Kubernetes validation
   │
   ▼
DOCKER BUILD
   │
   ▼
IMAGE REGISTRY
   │
   ▼
KUBERNETES
   │
   ├── Frontend Deployment
   ├── Backend Deployment
   └── Services
   │
   ▼
DATABASE
   │
   ▼
MONITORING / LOGS / ALERTS
```

## 🧩 Production Engineering Concepts

- **High Availability:** multiple application replicas behind a load balancer.
- **Fault Isolation:** frontend, backend and data layers are separated.
- **Zero-downtime direction:** rolling deployments can replace pods gradually.
- **Observability:** logs, metrics and health checks identify failures.
- **Infrastructure as Code:** Terraform keeps infrastructure reproducible.
- **Containerization:** Docker packages applications consistently.
- **Orchestration:** Kubernetes handles scheduling, service discovery and scaling.

> **Important:** The diagrams describe the target architecture and deployment workflow. Cloud resources are not claimed as live until an actual AWS environment is connected and deployed.

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
