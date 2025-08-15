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
