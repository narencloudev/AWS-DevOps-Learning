## 📘 Course Modules

1. Infrastructure as Code (IaC)
2. Terraform Basics  
   - Install Tools on MacOs, LinuxOS and WindowsOS  
   - Terraform Command Basics  
   - Terraform Language Syntax  
3. Terraform Settings, Providers and Resources  
4. Terraform Variables and Datasources  
5. Terraform Loops, Meta-Arguments and Splat Operators  
6. AWS VPC 3-Tier Architecture  
7. AWS EC2 Instances and Security Groups in a VPC  
8. AWS Classic Load Balancer  
9. AWS ALB Application Load Balancer  
10. AWS ALB Context-Path based Routing  
11. AWS ALB Host-Header based Routing  
12. AWS ALB HTTP Header and Query String Redirects  
13. AWS DNS to DB Implementation  
14. AWS Autoscaling with Launch Configuration  
15. AWS Autoscaling with Launch Templates  
16. AWS Network Load Balancer with TCP and TLS  
17. AWS CloudWatch Alarms for ALB, ASG and CIS  
18. Develop and Reference Terraform Modules locally  
19. Develop Terraform Module from scratch  
20. Remote State Storage with AWS S3 and DynamoDB  
21. Terraform Remote State Datasource  
22. IaC DevOps using AWS CodePipeline  

---

# ☁️ AWS Services Covered

1. AWS VPC Virtual Private Cloud  
2. AWS VPC NAT Gateways for Outbound Communication  
3. AWS VPC Public and Private Subnets  
4. AWS EC2 Instances  
5. AWS Security Groups  
6. AWS Classic Load Balancer  
7. AWS ALB Application Load Balancer - Basic  
8. AWS ALB Context-Path based Routing  
9. AWS ALB Host-Header based Routing  
10. AWS ALB Custom-HTTP Header based Routing  
11. AWS ALB Query String based Redirects  
12. AWS Autoscaling with Launch Configurations  
13. AWS Autoscaling with Launch Templates  
14. AWS Network Load Balancer  
15. AWS CloudWatch Alarms  
16. AWS Certificate Manager (ACM)  
17. AWS Route53  
18. AWS CodeBuild  
19. AWS CodePipeline  
20. AWS RDS Database  

---

# 🧱 Terraform Concepts Covered

1. Terraform Install  
2. Command Basics (init, validate, plan, apply)  
3. Language Syntax (Blocks, Arguments)  
4. Settings Block  
5. Provider Block  
6. Resources Block  
7. Resource Meta-Arguments (depends_on, count, for_each)  
8. Input Variables - Basics  
9. Input Variables - Assign When Prompted  
10. Input Variables - Override default with cli var  
11. Input Variables - Assign with terraform.tfvars  
12. Input Variables - Assign with tfvars var-file argument  
13. Input Variables - Assign with auto tfvars  
14. Input Variables - Lists  
15. Input Variables - Maps  
16. Input Variables - Sensitive Input Variables  
17. Function: File  
18. Output Values  
19. Local Values  
20. Datasources  
21. Backends - Remote State Storage  
22. File Provisioner  
23. local-exec Provisioner  
24. remote-exec Provisioner  
25. Null Resource  
26. Modules from Public Registry  
27. Build Local Module  
28. For Loop with Lists  
29. For Loop with Maps  
30. For Loops with Advanced Maps  
31. Legacy Splat Operator  
32. Latest Splat Operator  
33. Function: toset  
34. Function: tomap  
35. Function: keys  
36. Module Upgrades  
37. Random Resource








# 📘 Course Modules: Deep Dive (With Why, When, How, Examples & Syntax)

Master Infrastructure as Code and AWS with Terraform—from concepts to syntax, use cases, and live examples. Every topic below is thoroughly explained for practitioners and as a ready GitHub doc.

---

## 1. Infrastructure as Code (IaC)

- **Why:** Replace manual IT setups with repeatable code—boosts speed, reliability, and version control.[1][3][4]
- **When:** Use for any scalable, auditable cloud infrastructure.
- **How:** Write code that defines every aspect—servers, networks, storage—tracked in Git.
- **Example:**
    - *Declarative:* “I want 2 web servers running.”
    - *Imperative:* “Install server A, then server B.”
- **Syntax:**
    - Each tool has its syntax (Terraform: HCL, Ansible: YAML).
    ```
    # Declare AWS EC2 using Terraform
    resource "aws_instance" "web" {
      ami           = "ami-0abcdef123"
      instance_type = "t3.micro"
    }
    ```

---

## 2. Terraform Basics

### Install Tools on MacOS, Linux, Windows
- **Why:** Terraform CLI works on all major OS.
- **How:** Via package manager or binary.
- **Example:**
    - Mac/Linux:  
      ```
      brew tap hashicorp/tap
      brew install hashicorp/tap/terraform
      ```
    - Windows:  
      Download, unzip, add to `%PATH%`.[6][14]

### Terraform Command Basics

| Command               | Why/When/How                             | Example/Syntax                |
|-----------------------|------------------------------------------|-------------------------------|
| `terraform init`      | Initializes config, downloads provider   | `terraform init`              |
| `terraform plan`      | Preview changes before apply             | `terraform plan`              |
| `terraform apply`     | Apply changes to infra                   | `terraform apply`             |
| `terraform destroy`   | Remove all managed resources             | `terraform destroy`           |
| `terraform validate`  | Syntax & logic check                     | `terraform validate`          |
| `terraform fmt`       | Format config files                      | `terraform fmt`               |
| `terraform state`     | State manipulation                       | `terraform state list`        |
| `terraform show`      | Inspect current state                    | `terraform show`              |
| `terraform import`    | Import existing resources                | `terraform import ...`        |
| `terraform output`    | Show output values                       | `terraform output`            |
| `terraform workspace` | Multi-env mgmt (dev, prod)               | `terraform workspace new dev` |
[7][15]

### Terraform Language Syntax

- **Why:** Structured configs (readable, modular).[8][16]
- **Syntax:**
    - Curly braces for blocks, `key = value`.
    - Interpolation: `"${var.name}"`
    - Example:
      ```
      # Single line comment
      variable "region" { default = "us-east-1" }
      resource "aws_instance" "web" {
        ami           = var.ami
        instance_type = "t3.micro"
      }
      ```

---

## 3. Terraform Settings, Providers, Resources

- **Why:** Connect with cloud (AWS, GCP, Azure) and declare infra.
- **When:** First step in any TF project.
- **How:** Define providers, settings, and resources in `.tf`.
- **Example & Syntax:**
    ```
    terraform {
      required_providers {
        aws = { source = "hashicorp/aws", version = "~> 5.0" }
      }
      required_version = ">= 1.0"
    }
    provider "aws" {
      region = "us-east-1"
    }
    resource "aws_instance" "web" {
      ami           = "ami-0abcdef123"
      instance_type = "t3.micro"
    }
    ```
[17][9]

---

## 4. Terraform Variables and Datasources

- **Why:** Generalize configs and fetch external info.[18][10]
- **When:** When reusing modules, accessing existing resources.
- **How & Example:**
    - Variable:
      ```
      variable "instance_type" { default = "t3.micro" }
      ```
    - Data Source:
      ```
      data "aws_ami" "latest" {
        most_recent = true
        filter {
          name   = "name"
          values = ["amzn2-ami-hvm*"]
        }
        owners = ["amazon"]
      }
      resource "aws_instance" "web" {
        ami           = data.aws_ami.latest.id
        instance_type = var.instance_type
      }
      ```

---

## 5. Terraform Loops, Meta-Arguments, Splat Operators

- **Why:** Efficiently manage multiple similar resources.[19][11]
- **When:** Large scale, repeated infra.
- **How:**
    - `count`, `for_each`: Repeat resources.
    - `splat` (`[*]`): Collect all resource attributes.
- **Examples & Syntax:**
    - Count:
      ```
      resource "aws_instance" "web" {
        count = 3
        ami   = "ami-0abcdef123"
        instance_type = "t3.micro"
      }
      ```
    - For_each:
      ```
      resource "aws_security_group" "sg" {
        for_each = toset(["dev", "prod"])
        name = "${each.key}-sg"
      }
      ```
    - Splat:
      ```
      output "instance_ips" {
        value = aws_instance.web[*].public_ip
      }
      ```

---

## 6. AWS VPC 3-Tier Architecture

- **Why:** Isolate app, DB, web layers for security and scalability.
- **When:** Building production-grade apps.[12][20]
- **How:** 
    - Public subnet (web), private subnet (app), private subnet (db).
    - Route tables ensure proper segregation.
- **Example:**  
  - 2 public subnets (web), 2 private (app), 2 private (DB) in a VPC.

---

## 7. AWS EC2 Instances and Security Groups in a VPC

- **Why:** Secure, scalable compute.
- **When:** Any application deployment.
- **How:** Launch EC2, assign Security Groups.
- **Example:**
    ```
    resource "aws_security_group" "web_sg" {
      name        = "web_sg"
      description = "Allow HTTP and SSH"
      ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
      ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["X.X.X.X/32"]
      }
    }
    resource "aws_instance" "web" {
      ami           = "ami-0abcdef123"
      instance_type = "t2.micro"
      vpc_security_group_ids = [aws_security_group.web_sg.id]
    }
    ```

---

## 8. AWS Classic Load Balancer

- **Why:** Legacy Layer 4/7 traffic distribution.
- **When:** For backward compatibility.
- **How:** Attach EC2s, configure listeners, and health checks.
- **Example:**
    ```
    resource "aws_elb" "classic" {
      name               = "my-elb"
      availability_zones = ["us-east-1a"]
      listener {
        lb_port           = 80
        lb_protocol       = "http"
        instance_port     = 80
        instance_protocol = "http"
      }
      instances = [aws_instance.web.id]
    }
    ```

---

## 9. AWS ALB Application Load Balancer

- **Why:** Modern HTTP(S) load balancing.
- **When:** Apps requiring advanced Layer 7 routing.
- **How:** Setup listeners, rules, target groups.
- **Example:**
    ```
    resource "aws_lb" "app_lb" {
      name = "my-alb"
      internal = false
      load_balancer_type = "application"
      security_groups = [aws_security_group.web_sg.id]
      subnets = [aws_subnet.public1.id, aws_subnet.public2.id]
    }
    ```

---

## 10. AWS ALB Context-Path Based Routing

- **Why:** Route requests by URL path for microservices.
- **When:** When serving multiple services from one LB.
- **How:** Listener rules matching paths.
- **Example:**
    ```
    resource "aws_lb_listener_rule" "api_path" {
      listener_arn = aws_lb_listener.http.arn
      action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.api.arn
      }
      condition {
        path_pattern {
          values = ["/api/*"]
        }
      }
    }
    ```

---

## 11. AWS ALB Host-Header Based Routing

- **Why:** Direct requests by domain name.
- **When:** Multiple domains sharing one ALB.
- **How:** Listener rules for `Host` header.
- **Example:**
    ```
    resource "aws_lb_listener_rule" "api_host" {
      listener_arn = aws_lb_listener.http.arn
      action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.api.arn
      }
      condition {
        host_header {
          values = ["api.example.com"]
        }
      }
    }
    ```

---

## 12. AWS ALB HTTP Header and Query String Redirects

- **Why:** Complex routing, security, or AB testing.
- **When:** When decisions rely on custom headers/parameters.
- **How:** Listener rules filter by HTTP headers/query strings.
- **Example:**
    ```
    resource "aws_lb_listener_rule" "header_rule" {
      listener_arn = aws_lb_listener.http.arn
      action {
        type             = "redirect"
        redirect {
          port        = "443"
          protocol    = "HTTPS"
          status_code = "HTTP_301"
        }
      }
      condition {
        http_header {
          http_header_name = "X-Forwarded-Proto"
          values           = ["http"]
        }
      }
    }
    ```

---

## 13. AWS DNS to DB Implementation

- **Why:** Seamless front-to-back access.
- **When:** For linking user domains to backend DBs.
- **How:** Route53 → ALB → EC2 → RDS (DB).
- **Example:** Assign Route53 record to the ALB DNS, which routes to EC2, whose apps use RDS for data.

---

## 14. AWS Autoscaling with Launch Configuration

- **Why:** Automatically adjust VM count for demand.
- **When:** Legacy autoscaling scenarios.
- **How:** Define `aws_launch_configuration`, use with `aws_autoscaling_group`.
- **Example:**
    ```
    resource "aws_launch_configuration" "as_conf" {
      name_prefix   = "example"
      image_id      = "ami-0abcdef123"
      instance_type = "t2.micro"
    }
    resource "aws_autoscaling_group" "asg" {
      launch_configuration = aws_launch_configuration.as_conf.name
      min_size             = 1
      max_size             = 3
      vpc_zone_identifier  = [aws_subnet.public1.id]
      health_check_type    = "EC2"
    }
    ```

---

## 15. AWS Autoscaling with Launch Templates

- **Why:** Modern, flexible autoscaling (AMI versions, multiple instance types).
- **How:** `aws_launch_template` resource.
- **Example:**
    ```
    resource "aws_launch_template" "web" {
      name_prefix   = "web"
      image_id      = "ami-0abcdef123"
      instance_type = "t3.micro"
    }
    resource "aws_autoscaling_group" "asg" {
      launch_template {
        id      = aws_launch_template.web.id
        version = "$Latest"
      }
      min_size = 2
      max_size = 5
      vpc_zone_identifier = [aws_subnet.public1.id]
    }
    ```

---

## 16. AWS Network Load Balancer with TCP and TLS

- **Why:** Ultra-high performance TCP/TLS balancing.
- **When:** For databases, non-HTTP workloads.
- **How:** Define NLB, listeners, and target groups.
- **Example:**
    ```
    resource "aws_lb" "nlb" {
      name               = "my-nlb"
      internal           = false
      load_balancer_type = "network"
      subnets            = [aws_subnet.public1.id, aws_subnet.public2.id]
    }
    resource "aws_lb_listener" "tcp" {
      load_balancer_arn = aws_lb.nlb.arn
      port              = 3306
      protocol          = "TCP"
      default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.db.arn
      }
    }
    ```

---

## 17. AWS CloudWatch Alarms for ALB, ASG, and CIS

- **Why:** Proactive monitoring and auto-remediation.
- **How:** Track metrics like CPU, unhealthy hosts, service errors.
- **Example:**
    ```
    resource "aws_cloudwatch_metric_alarm" "high_cpu" {
      alarm_name          = "high-cpu"
      comparison_operator = "GreaterThanThreshold"
      evaluation_periods  = 2
      metric_name         = "CPUUtilization"
      namespace           = "AWS/EC2"
      period              = 60
      statistic           = "Average"
      threshold           = 80
      alarm_actions       = [aws_autoscaling_policy.scale_up.arn]
      dimensions = {
        AutoScalingGroupName = aws_autoscaling_group.asg.name
      }
    }
    ```

---

## 18. Develop and Reference Terraform Modules Locally

- **Why:** Reuse, standardize code.
- **How:** Reference a local folder as a module.
- **Example:**
    ```
    module "vpc" {
      source = "./modules/vpc"
      cidr_block = "10.0.0.0/16"
    }
    ```

---

## 19. Develop Terraform Module from Scratch

- **Why:** Build reusable components (VPCs, EC2, etc.).
- **How:** Structure with `variables.tf`, `outputs.tf`, `main.tf`.
- **Example:**  
  In `modules/vpc/main.tf`:
    ```
    resource "aws_vpc" "this" {
      cidr_block = var.cidr_block
    }
    ```
  In root:
    ```
    module "vpc" {
      source = "./modules/vpc"
      cidr_block = "10.1.0.0/16"
    }
    ```

---

## 20. Remote State Storage with AWS S3 and DynamoDB

- **Why:** Team collaboration, state locking, disaster recovery.
- **How:** State in S3 bucket; lock via DynamoDB.
- **Example:**
    ```
    terraform {
      backend "s3" {
        bucket         = "my-tf-states"
        key            = "dev/terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "tf-state-lock"
      }
    }
    ```

---

## 21. Terraform Remote State Datasource

- **Why:** Share infra outputs across projects.
- **How:** Use `terraform_remote_state` data source.
- **Example:**
    ```
    data "terraform_remote_state" "network" {
      backend = "s3"
      config = {
        bucket = "my-tf-states"
        key    = "network/terraform.tfstate"
        region = "us-east-1"
      }
    }
    ```

---

## 22. IaC DevOps Using AWS CodePipeline

- **Why:** Automate infra deployments (CI/CD) for Terraform code.
- **How:** CodePipeline triggers CodeBuild to test and apply Terraform on PR merge.
- **Example:**  
  - Define CodePipeline → Source (GitHub); Build (CodeBuild runs `terraform plan`/`apply`); Approval; Deploy.[1][7]

---

# ☁️ AWS Services Covered

Every service above is part of at least one practical hands-on lab. Key concepts include VPC for isolation, NAT for outbound comms, public/private subnets, load balancers for scaling, ACM for SSL, Route53 for DNS, CodeBuild/CodePipeline for continuous automation, and RDS for database needs.

---

# 🧱 Terraform Concepts Covered

A mastery curriculum including:

- **Install & Setup:** Download/install for any OS.
- **Commands:** Init, validate, plan, apply, destroy, show, output, import, state, refresh, workspace.
- **Providers/Settings:** Configure AWS etc.
- **Resources:** Declare and manage via HCL.
- **Variables & Locals:** Parametrize—all assignment types covered.
- **Meta-Arguments:** count, for_each, depends_on.
- **Loops/Splat:** Write DRY, scalable code.
- **Modules:** Consume registry and custom modules; organize your repos!
- **Functions:** file, toset, tomap, keys and more.
- **Outputs:** Expose resource attributes.
- **Provisioners:** Bootstrap (file, local-exec, remote-exec).
- **Null Resource:** Arbitrary logic.
- **Remote State/Backends:** Team workflows.
- **Random Resource:** Generate secrets, names.
- **Upgrades:** Upgrade modules and handle breaking changes.

---

**This article is GitHub ready—copy and use as your course README or documentation!**

---

*References: [1][3][4][5][6][7][8][9][10][11][12][14][15][16][17][18][19][20]*
