# 🗓 1-Week AWS Pure Theory + Interview Prep Plan

This is a **theory-only AWS study plan** designed for **1–2 high-value topics per day**,  
focusing on **core AWS concepts** and **common interview questions**.  
Perfect for when you’re away from your laptop.

---

## **Day 1 – AWS Infrastructure & Networking**

### Topics
- **AWS Global Structure:** Regions → Availability Zones (AZs) → Edge Locations.
- **VPC:** Isolated virtual network in AWS.
- **Subnets:** Public (internet-facing) vs Private (internal use only).
- **Routing:** Route Tables direct traffic, IGW for public access, NAT Gateway for outbound internet from private subnets.

### Interview Angle
- Difference between **Internet Gateway (IGW)** and **NAT Gateway**.
- How AWS ensures **high availability** via multiple AZs.

---

## **Day 2 – EC2 & Storage**

### Topics
- **EC2:** Virtual servers with instance families: General, Compute, Memory, Storage optimized.
- **Pricing Models:** On-Demand (flexible), Reserved (1–3 years, cheaper), Spot (low cost but can be interrupted).
- **EBS:** Block storage with types like gp3 (general), io1/io2 (high IOPS), st1/sc1 (throughput optimized).
- **Snapshots & AMIs:** Backup and restore methods.

### Interview Angle
- When to use **EBS** vs **Instance Store**.
- How **snapshots** store incremental changes.

---

## **Day 3 – Load Balancing & Scaling**

### Topics
- **Elastic Load Balancer (ELB) Types:**
  - ALB – Layer 7 (HTTP/S)
  - NLB – Layer 4 (TCP/UDP)
  - CLB – Legacy
- **Target Groups & Health Checks:** Ensures traffic goes to healthy instances.
- **Auto Scaling Groups (ASG):** Automatically adjust instance count based on demand.

### Interview Angle
- **ALB vs NLB** use cases.
- Horizontal vs Vertical scaling.

---

## **Day 4 – S3 & CDN**

### Topics
- **S3:** Object storage with 99.999999999% durability.
- **Storage Classes:** Standard, IA, One Zone-IA, Glacier.
- **Versioning & Lifecycle Rules:** Manage retention and archiving.
- **CloudFront:** Global CDN for faster content delivery.

### Interview Angle
- Durability vs Availability in S3.
- How **CloudFront** reduces latency using edge caching.

---

## **Day 5 – IAM & Security**

### Topics
- **IAM Components:** Users, Groups, Roles, Policies.
- **Policies:** AWS Managed, Customer Managed, and Inline.
- **Security:** MFA, least privilege principle, root account protection.

### Interview Angle
- Difference between **Role** and **User**.
- IAM policy evaluation order (explicit deny always wins).

---

## **Day 6 – Serverless & Event-Driven**

### Topics
- **Lambda:** Event-driven compute, pay-per-execution.
- **Triggers:** S3, API Gateway, DynamoDB Streams, EventBridge.
- **API Gateway:** Manages API calls to Lambda or backend services.

### Interview Angle
- **Cold start** in Lambda and its impact.
- REST API vs HTTP API in API Gateway.

---

## **Day 7 – Monitoring & Automation**

### Topics
- **CloudWatch:** Metrics, alarms, dashboards.
- **CloudTrail:** Logs all AWS API calls for auditing.
- **AWS Config:** Tracks resource configuration changes.
- **Automation:** AWS CLI, SDK basics, Infrastructure as Code concepts.

### Interview Angle
- Difference between **CloudWatch** and **CloudTrail**.
- Example of automating tasks with AWS CLI.


# Docker & Jenkins – Theory + Interview Preparation Plan

This guide provides a **7-day high-level theory roadmap** for both **Docker** and **Jenkins** to help in interviews and practical understanding.

---

## 📦 Week 2 – Docker

### **Day 1 – Docker Fundamentals**
- **Theory:** Difference between containers and virtual machines, Docker architecture (Client, Daemon, Registry, Images, Containers).
- **Interview Focus:**
  - What problem does Docker solve compared to VMs?
  - Explain Docker architecture.
  - What is the role of Docker Hub?

---

### **Day 2 – Docker Images & Containers**
- **Theory:** Image layers, base images, creating containers, starting/stopping/removing containers.
- **Interview Focus:**
  - Difference between an image and a container.
  - What happens when you run `docker run`?
  - How are images stored locally?

---

### **Day 3 – Dockerfile Mastery**
- **Theory:** Writing Dockerfiles, build context, `.dockerignore`, multi-stage builds, build optimizations.
- **Interview Focus:**
  - Common Dockerfile instructions (`FROM`, `RUN`, `COPY`, `CMD`).
  - Multi-stage build benefits.
  - Why use `.dockerignore`?

---

### **Day 4 – Docker Networking & Storage**
- **Theory:** Bridge, host, overlay networks, port mapping, volumes vs bind mounts, persistent data.
- **Interview Focus:**
  - Difference between bridge and host networks.
  - How to persist container data?
  - Port mapping syntax in `docker run`.

---

### **Day 5 – Docker Compose**
- **Theory:** Multi-container applications, `docker-compose.yml` syntax, `up`/`down` commands, service scaling.
- **Interview Focus:**
  - Why use Docker Compose?
  - Explain `depends_on` and scaling services.
  - How to override variables in Compose?

---

### **Day 6 – Docker Orchestration Basics**
- **Theory:** Docker Swarm overview, services, scaling, Kubernetes comparison.
- **Interview Focus:**
  - Difference between Docker Swarm and Kubernetes.
  - How to scale containers?
  - What is a Docker service?

---

### **Day 7 – Docker Security & Troubleshooting**
- **Theory:** Managing secrets, setting resource limits, debugging (`docker logs`, `docker exec`, `inspect`).
- **Interview Focus:**
  - How to pass secrets securely?
  - Difference between `exec` and `attach`.
  - How to check container resource usage?

---

## ⚙️ Week 3 – Jenkins

### **Day 1 – Jenkins Overview**
- **Theory:** CI/CD concepts, Jenkins architecture (Master/Controller, Agents/Nodes), pipeline basics.
- **Interview Focus:**
  - What is CI/CD?
  - How does Jenkins architecture work?
  - Difference between Master and Agent.

---

### **Day 2 – Jenkins Jobs & Pipelines**
- **Theory:** Freestyle jobs vs Pipelines, Jenkinsfile basics, scripted vs declarative pipelines.
- **Interview Focus:**
  - When to use a Freestyle job vs a Pipeline.
  - Difference between declarative and scripted pipeline.
  - Location and syntax of Jenkinsfile.

---

### **Day 3 – Pipeline Stages**
- **Theory:** Defining `stages` and `steps`, post actions, conditional execution, parallel stages.
- **Interview Focus:**
  - How to define multiple stages in Jenkinsfile.
  - Purpose of `post` section.
  - How to run jobs in parallel?

---

### **Day 4 – Plugins & Integration**
- **Theory:** Installing plugins, integrating with Git, Docker, Slack, SonarQube.
- **Interview Focus:**
  - How to install and update plugins.
  - Jenkins–Git integration steps.
  - Common plugins you’ve used.

---

### **Day 5 – Agents & Distributed Builds**
- **Theory:** Static/dynamic agents, connecting agents via SSH/JNLP, Docker-based agents.
- **Interview Focus:**
  - Why use multiple agents?
  - Difference between static and dynamic agents.
  - Setting up a Docker agent in Jenkins.

---

### **Day 6 – Security & Credentials**
- **Theory:** Authentication, RBAC, storing credentials securely, secret text vs SSH key.
- **Interview Focus:**
  - How to manage credentials in Jenkins.
  - Role-based access control setup.
  - Storing SSH keys securely.

---

### **Day 7 – Maintenance & Best Practices**
- **Theory:** Backup strategies, Jenkins upgrades, performance tuning, troubleshooting failed builds.
- **Interview Focus:**
  - How to back up Jenkins.
  - Common reasons for build failures.
  - Jenkins performance optimization tips.

---

## 📚 Notes
- Each day covers **theory first** followed by **common interview questions**.
- Revise previous topics before moving to the next day.
- Keep a **personal knowledge log** of your answers.


---

## 🎯 **Interview Q&A Flashcards**

### AWS Infrastructure & Networking
**Q:** What is the difference between a Region and an AZ?  
**A:** A Region is a geographical area, and an AZ is an isolated data center within a region. Regions have multiple AZs for high availability.

**Q:** How does a NAT Gateway differ from an Internet Gateway?  
**A:** IGW allows inbound/outbound traffic for public subnets; NAT Gateway allows outbound internet for private subnets but blocks inbound.

---

### EC2 & Storage
**Q:** What is the difference between EBS and Instance Store?  
**A:** EBS is persistent block storage; Instance Store is ephemeral and lost when the instance stops.

**Q:** How do EBS snapshots work?  
**A:** Snapshots are incremental — only changed blocks are saved after the first full backup.

---

### Load Balancing & Scaling
**Q:** ALB vs NLB?  
**A:** ALB works at Layer 7, supports HTTP/S routing and advanced features; NLB works at Layer 4, faster, handles TCP/UDP traffic.

**Q:** What is horizontal scaling?  
**A:** Adding more instances; vertical scaling means upgrading instance size.

---

### S3 & CDN
**Q:** How is durability different from availability in S3?  
**A:** Durability means data is not lost (99.999999999%), availability is how often it can be accessed.

**Q:** How does CloudFront reduce latency?  
**A:** By caching content in edge locations close to users.

---

### IAM & Security
**Q:** Role vs User?  
**A:** User has long-term credentials; Role has temporary credentials, usually assumed by AWS services or other accounts.

**Q:** What wins in IAM policy evaluation?  
**A:** Explicit Deny always overrides any Allow.

---

### Serverless & Event-Driven
**Q:** What is a Lambda cold start?  
**A:** Delay when a Lambda function is invoked after being idle, as AWS provisions the execution environment.

**Q:** REST API vs HTTP API in API Gateway?  
**A:** REST API is feature-rich but more expensive; HTTP API is cheaper and faster for most use cases.

---

### Monitoring & Automation
**Q:** CloudWatch vs CloudTrail?  
**A:** CloudWatch monitors performance metrics/logs; CloudTrail logs API calls for auditing.

**Q:** How can AWS CLI be used for automation?  
**A:** By scripting repetitive AWS commands, e.g., provisioning EC2, managing S3 buckets.

## 📌 Additional AWS Interview Questions

### AWS Infrastructure & Networking
**Q:** What is VPC Peering?  
**A:** A network connection between two VPCs that allows them to communicate privately without using the internet.

**Q:** Can two VPCs in different regions be peered?  
**A:** Yes, using inter-region VPC peering.

**Q:** What is AWS PrivateLink?  
**A:** A way to securely access services over AWS’s private network without exposing them to the public internet.

---

### EC2 & Storage
**Q:** What is the difference between gp3 and gp2 EBS volumes?  
**A:** gp3 offers baseline 3000 IOPS and cheaper pricing compared to gp2 with performance scaling based on size.

**Q:** What is an AMI?  
**A:** An Amazon Machine Image, a template containing the OS, application server, and apps for launching EC2 instances.

**Q:** How can you reduce EC2 costs?  
**A:** Use Spot Instances, Reserved Instances, right-sizing, and Auto Scaling.

---

### Load Balancing & Scaling
**Q:** How does ALB perform path-based routing?  
**A:** It routes traffic to different target groups based on the URL path in the request.

**Q:** What are ELB health check states?  
**A:** Healthy, Unhealthy, Initial, Draining.

**Q:** What is the cooldown period in Auto Scaling?  
**A:** A time delay after scaling to prevent rapid scaling actions.

---

### S3 & CDN
**Q:** What are S3 Event Notifications?  
**A:** Triggers that send events to services like Lambda, SNS, or SQS when objects are created or deleted.

**Q:** How is data encrypted in S3 by default?  
**A:** By default, it’s not encrypted; you must enable SSE-S3, SSE-KMS, or SSE-C.

**Q:** What is the max object size in S3?  
**A:** 5TB, but for objects over 5GB you must use multipart upload.

---

### IAM & Security
**Q:** What is the difference between an inline and a managed policy?  
**A:** Inline is embedded directly into one user/group/role; managed is reusable across multiple entities.

**Q:** What is the AWS root user?  
**A:** The initial account with full access; should be protected with MFA and rarely used.

**Q:** What is the AWS Shared Responsibility Model?  
**A:** AWS secures the infrastructure, customers secure their applications and data.

---

### Serverless & Event-Driven
**Q:** What is AWS Step Functions?  
**A:** A serverless orchestration service to coordinate multiple AWS services into workflows.

**Q:** What is an API Gateway stage?  
**A:** A named environment (e.g., dev, test, prod) for API deployment.

**Q:** Can Lambda functions run in a VPC?  
**A:** Yes, but they need proper subnet and security group configurations.

---

### Monitoring & Automation
**Q:** What is a CloudWatch Alarm?  
**A:** A notification or action triggered when a metric crosses a defined threshold.

**Q:** What is AWS Config used for?  
**A:** Tracking and auditing resource configurations for compliance.

**Q:** What is the difference between AWS CLI and AWS SDK?  
**A:** CLI is for command-line operations; SDK is for integrating AWS services into code.

---

### Mixed Scenario Questions
**Q:** How would you make an EC2 instance in a private subnet download OS updates?  
**A:** Use a NAT Gateway or NAT Instance in a public subnet.

**Q:** How can you improve the durability of EC2 data beyond EBS snapshots?  
**A:** Replicate data to S3 or use cross-region replication.

**Q:** How would you design a multi-region S3 setup for low latency?  
**A:** Use S3 Cross-Region Replication (CRR) and CloudFront.


---

## ✅ Final Tips
- Revise **Interview Angle** points daily — they are likely to be asked.
- Understand **service limits** and **pricing basics** for scenario questions.
- Practice **explaining in simple terms** — clarity beats memorization.


## Topics and Dscription

# AWS Deep Understanding Topics Guide

A comprehensive list of core AWS services and concepts with detailed descriptions for interview preparation.

---

## 1. Compute

### EC2 (Elastic Compute Cloud)
A web service that provides resizable compute capacity in the cloud.  
You can choose instance types optimized for compute, memory, or storage, attach different storage volumes (EBS/Ephemeral), use spot/on-demand/reserved pricing, and configure networking/security groups.  
**Key Points:** Launch configurations, AMIs, user data scripts, scaling, placement groups.

### Auto Scaling
Automatically adjusts the number of EC2 instances to handle changing demand.  
Scaling can be dynamic (based on metrics) or scheduled (based on time).  
**Key Points:** Scaling policies, cooldown periods, lifecycle hooks, integration with ELB.

### Elastic Load Balancing (ELB)
Distributes incoming traffic across multiple targets (EC2, containers, IP addresses) in one or more AZs to improve availability and fault tolerance.  
**Key Points:** Types (ALB, NLB, GLB), health checks, sticky sessions, SSL termination.

### Lightsail
A simplified compute platform with fixed monthly pricing for small-scale apps, websites, or testing environments.  
**Key Points:** Preconfigured stacks (WordPress, LAMP), snapshots, networking.

### AWS Batch
Runs hundreds to thousands of batch jobs efficiently. AWS Batch dynamically provisions resources based on the job requirements.  
**Key Points:** Job queues, compute environments, job definitions.

---

## 2. Storage

### S3 (Simple Storage Service)
Highly scalable, durable object storage for unstructured data such as backups, media, and logs.  
Supports features like versioning, lifecycle policies, bucket policies, and cross-region replication.  
**Key Points:** Storage classes (Standard, IA, Glacier), event notifications, S3 Select.

### EBS (Elastic Block Store)
Block-level storage for EC2 instances with persistent data.  
Provides SSD or HDD volumes, snapshots, and encryption.  
**Key Points:** Volume types (gp3, io2, st1, sc1), resizing, attaching/detaching.

### EFS (Elastic File System)
Fully managed NFS file system that scales automatically.  
Accessible from multiple EC2 instances across AZs concurrently.  
**Key Points:** Performance modes, throughput modes, mount targets.

### FSx
Fully managed file systems: FSx for Windows (SMB-based) and FSx for Lustre (HPC workloads).  
**Key Points:** Integration with on-premises AD, high throughput, POSIX compatibility.

### Glacier
Low-cost archival storage for data that is rarely accessed.  
**Key Points:** Retrieval options (Expedited, Standard, Bulk), Vault Lock.

---

## 3. Databases

### RDS (Relational Database Service)
Managed relational database service for MySQL, PostgreSQL, MariaDB, Oracle, and SQL Server.  
Handles backups, patching, scaling, and high availability.  
**Key Points:** Multi-AZ deployments, read replicas, automated backups.

### Aurora
MySQL- and PostgreSQL-compatible relational database with high performance and availability.  
Automatically replicates six copies of your data across three AZs.  
**Key Points:** Serverless option, global databases, storage auto-scaling.

### DynamoDB
Fully managed NoSQL database with millisecond latency and seamless scaling.  
**Key Points:** Partitions, primary keys, indexes, streams, on-demand vs provisioned capacity.

### ElastiCache
In-memory data store and cache using Redis or Memcached.  
**Key Points:** Cluster mode, replication groups, persistence options.

### Redshift
Managed petabyte-scale data warehouse optimized for analytics queries.  
**Key Points:** Columnar storage, compression, Spectrum for querying S3.

---

## 4. Networking & Content Delivery

### VPC (Virtual Private Cloud)
Isolated virtual network in AWS where you can launch resources.  
**Key Points:** Subnets, route tables, gateways (IGW, NAT), NACLs, security groups, VPC peering.

### Route 53
Scalable Domain Name System (DNS) service.  
**Key Points:** Routing policies (simple, weighted, latency, geolocation), health checks, DNS failover.

### CloudFront
Content Delivery Network (CDN) that caches content at edge locations for low latency.  
**Key Points:** Distribution types, caching behavior, origin failover.

### Direct Connect
Dedicated private network connection between your data center and AWS.  
**Key Points:** Reduces latency, consistent performance, hybrid architectures.

### Transit Gateway
Centralized hub for connecting multiple VPCs and on-prem networks.  
**Key Points:** Route tables, attachments, inter-region peering.

---

## 5. Security & Identity

### IAM (Identity and Access Management)
Manages access to AWS resources with fine-grained permissions.  
**Key Points:** Users, groups, roles, policies (inline vs managed), policy evaluation logic.

### Cognito
Authentication, authorization, and user management for web/mobile apps.  
**Key Points:** User pools vs identity pools, SAML/OAuth integration.

### KMS (Key Management Service)
Securely create and manage encryption keys.  
**Key Points:** Customer-managed vs AWS-managed keys, envelope encryption.

### Secrets Manager
Secure storage for secrets with automatic rotation.  
**Key Points:** Integration with RDS, Lambda, and other AWS services.

### GuardDuty
Intelligent threat detection service using logs and machine learning.  
**Key Points:** Findings, integrations, multi-account support.

### WAF & Shield
Protect web apps from common attacks (WAF) and DDoS attacks (Shield).  
**Key Points:** Rules, rate limiting, managed rule groups.

---

## 6. Monitoring & Management

### CloudWatch
Monitoring service for metrics, logs, and events.  
**Key Points:** Alarms, dashboards, Logs Insights, custom metrics.

### CloudTrail
Records all AWS API calls for auditing and governance.  
**Key Points:** Event history, trails, integration with S3/CloudWatch.

### Config
Tracks resource configuration changes and compliance against rules.  
**Key Points:** Managed vs custom rules, compliance dashboard.

### Trusted Advisor
Provides best practice checks for cost optimization, security, fault tolerance, and performance.  
**Key Points:** Real-time guidance, priority checks.

### Systems Manager
Provides operational data and automation for AWS resources.  
**Key Points:** Session Manager, Parameter Store, Patch Manager.

---

## 7. Application Integration

### SQS (Simple Queue Service)
Decouples microservices via reliable message queuing.  
**Key Points:** Standard vs FIFO queues, message retention, dead-letter queues.

### SNS (Simple Notification Service)
Pub/sub messaging for distributing messages to multiple endpoints.  
**Key Points:** Topics, subscriptions, fan-out architecture.

### EventBridge
Serverless event bus for integrating AWS services and SaaS apps.  
**Key Points:** Rules, event patterns, targets.

### Step Functions
Visual workflow automation for AWS services.  
**Key Points:** Standard vs Express workflows, state transitions, error handling.

### AppSync
Managed GraphQL API service for real-time and offline data access.  
**Key Points:** Resolvers, subscriptions, integration with DynamoDB/Lambda.

---

## 8. Developer Tools

### CodeCommit
Private Git-based repository hosting.  
**Key Points:** Encryption, triggers, IAM-based access control.

### CodeBuild
Fully managed build service that compiles source code and runs tests.  
**Key Points:** Buildspec files, environment variables, caching.

### CodeDeploy
Automates code deployment to various compute platforms.  
**Key Points:** Deployment groups, hooks, in-place vs blue/green.

### CodePipeline
Continuous integration and delivery pipeline orchestration.  
**Key Points:** Stages, actions, integration with CodeBuild/CodeDeploy.

### Cloud9
Cloud-based development IDE accessible from a browser.  
**Key Points:** Collaboration features, environment types.

---

## 9. Analytics & AI/ML

### Athena
Serverless query service for S3 using SQL.  
**Key Points:** Schema-on-read, partitions, integration with Glue Data Catalog.

### EMR
Managed Hadoop and Spark clusters for big data processing.  
**Key Points:** Cluster nodes, scaling, bootstrap actions.

### Kinesis
Real-time streaming data ingestion and analytics.  
**Key Points:** Data Streams, Firehose, Data Analytics.

### Glue
Serverless ETL service to prepare and transform data.  
**Key Points:** Crawlers, jobs, triggers.

### QuickSight
Scalable BI service for creating interactive dashboards.  
**Key Points:** SPICE engine, data sources, sharing.

### SageMaker
End-to-end ML platform to build, train, and deploy models.  
**Key Points:** Notebooks, training jobs, endpoints.

---

## 10. Migration & Transfer

### DMS (Database Migration Service)
Migrates databases to AWS with minimal downtime.  
**Key Points:** Continuous replication, heterogeneous migration.

### SMS (Server Migration Service)
Migrates on-premises VMs to AWS.  
**Key Points:** Incremental replication, automation.

### Snowball/Snowmobile
Physical devices for moving petabytes of data to AWS.  
**Key Points:** Edge computing support, security.

### DataSync
Automates online data transfer between on-premises and AWS.  
**Key Points:** Task scheduling, verification, encryption.

---

## 11. Hybrid & Edge

### Outposts
AWS infrastructure installed on-premises for hybrid workloads.  
**Key Points:** Same APIs, tools, and hardware as AWS cloud.

### Local Zones
Deploy compute, storage, and databases closer to large population centers.  
**Key Points:** Low latency, specific availability.

### Wavelength
AWS services embedded into telecom 5G networks for ultra-low latency apps.  
**Key Points:** Edge computing for mobile apps.

---

## 12. Cost Management

### Cost Explorer
Visualize and analyze AWS costs over time.  
**Key Points:** Filtering, forecasting, trends.

### Budgets
Set alerts for cost and usage thresholds.  
**Key Points:** Multiple budget types (cost, usage, RI/Savings Plan).

### Savings Plans & Reserved Instances
Commit to consistent usage for lower rates.  
**Key Points:** Flexible instance families (Savings Plans), capacity reservation (RIs).

---

