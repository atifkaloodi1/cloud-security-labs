<!-- ============================================================= -->
<div align="center">

<img src="https://img.shields.io/badge/AWS-Cloud%20Security%20Labs-141824?style=for-the-badge&logo=amazonwebservices&logoColor=F5C96B" alt="AWS Cloud Security Labs"/>
<img src="https://img.shields.io/badge/CYB%20222-Willis%20College-1F2A44?style=for-the-badge" alt="CYB 222"/>
<img src="https://img.shields.io/badge/Labs-6%20complete-5DD0A7?style=for-the-badge" alt="6 labs complete"/>
<img src="https://img.shields.io/badge/Avg%20Score-97.2%25-2E9E5B?style=for-the-badge" alt="Average score 97.2%"/>

# Cloud Security Labs

**Hands-on AWS labs from the CYB 222 cloud module — IAM, VPC, EC2, EBS, RDS, and Elastic Load Balancing with Auto Scaling.**

Each lab folder contains a task-by-task README with screenshots, a navy-themed write-up (Word + PDF where available), and the AWS Academy grading result.

</div>

---

## About

This repository documents the AWS Academy cloud lab series completed as part of **CYB 222 — Linux Systems Administration & Security** at Willis College. Each lab is built and documented to the same standard: complete the lab in the AWS console, capture each task, then produce a professional write-up with a task reference, security insights, and the submission report.

The arc moves from networking foundations up to a highly available, auto-scaled web tier — the final lab (Lab 6) is the capstone pattern that ties the compute, storage, and database labs together. The broader module also covered **AWS IAM** (Lab 1) as its identity foundation.

---

## Labs

| # | Lab | Core AWS services | Score | Docs |
|---|-----|-------------------|:-----:|:----:|
| 1 | Introduction to AWS IAM | IAM users, groups, policies, roles | **100 / 100** | — |
| 2 | Build your VPC and Launch a Web Server | VPC, subnets, route tables, IGW, EC2 | **83.33 / 100** | [`lab-02-vpc-web-server`](./lab-02-vpc-web-server) |
| 3 | Introduction to Amazon EC2 | EC2, AMIs, instance types, security groups | **100 / 100** | [`lab-03-ec2-intro`](./lab-03-ec2-intro) |
| 4 | Working with EBS | EBS volumes, snapshots, attach/detach | **100 / 100** | [`lab-04-ebs-volumes`](./lab-04-ebs-volumes) |
| 5 | Build a Database Server | Amazon RDS, Multi-AZ, DB security groups | **100 / 100** | [`lab-05-rds-multi-az`](./lab-05-rds-multi-az) |
| 6 | Scale & Load Balance your Architecture | ELB (ALB), EC2 Auto Scaling, CloudWatch | **100 / 100** | [`lab-06-elb-auto-scaling`](./lab-06-elb-auto-scaling) |

> Scores are AWS Academy gradebook results. **Five perfect scores of six**; Lab 2 (VPC) at 83.33 is the one open item. Lab 1 (IAM) was completed as part of the module but is not documented in this repo (the — in the Docs column).

---

## Skills demonstrated

- **Identity & access** — IAM users, groups, custom policies, and roles for least-privilege access.
- **Networking** — VPC design, public/private subnets across Availability Zones, route tables, internet and NAT gateways.
- **Compute** — EC2 provisioning, AMIs for immutable/reproducible instances, security-group scoping.
- **Storage** — EBS volumes and snapshots; backup and recovery workflow.
- **Databases** — Amazon RDS with Multi-AZ for database-tier high availability.
- **Elasticity & availability** — Application Load Balancer across two AZs, EC2 Auto Scaling with target-tracking policies, CloudWatch alarms and metrics.
- **Security posture** — private compute behind a public load balancer, minimized attack surface, health-check-driven traffic control, and per-minute observability.

---

## Capstone pattern (Lab 6)

The final lab assembles the earlier building blocks into the reference **web-tier high-availability pattern**: an internet-facing Application Load Balancer in the public subnets fronting a private, auto-scaled fleet of EC2 instances across two Availability Zones, with a Multi-AZ RDS backend.

- Removes the single point of failure at the web tier.
- Keeps compute instances private — only the load balancer's security group faces the internet.
- Uses immutable AMIs + a launch template so instances are reproducible and disposable.
- Scales on CloudWatch CPU metrics via a target-tracking policy, bounded 2–6 instances.

See [`lab-06-elb-auto-scaling`](./lab-06-elb-auto-scaling) for the full walkthrough and the 35/35 submission report.

---

<div align="center">
<sub>

**Atif Memon** · [github.com/atifkaloodi1](https://github.com/atifkaloodi1) · [gravatar.com/atifmem](https://gravatar.com/atifmem)

Documented as part of the **CYB 222** diploma coursework · [IlmBytesTech](https://ilmbytestech.com)

</sub>
</div>
