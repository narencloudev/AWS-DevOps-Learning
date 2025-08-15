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

---

## ✅ Final Tips
- Revise **Interview Angle** points daily — they’re the questions you’ll likely face.
- Keep AWS **service limits** and **pricing basics** in mind for scenario-based questions.
- Practice **explaining topics in your own words** — clarity matters more than memorizing definitions.
