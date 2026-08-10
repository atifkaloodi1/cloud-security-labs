# Cloud Security Labs

A growing collection of hands-on cloud security labs — building, securing, and documenting AWS infrastructure from the ground up. Each lab is a self-contained module with its own walkthrough, architecture diagrams, extracted scripts, and console screenshots documenting the build.

Completed as part of a Cyber Security Analyst diploma (cloud security module). The focus is on understanding *why* each design decision is made — the network isolation, routing, and least-privilege reasoning that carries over from lab environments into real production architecture.

---

## Labs

| # | Lab | Focus | Status |
|---|---|---|---|
| 02 | [Build a VPC and Launch a Web Server](lab-02-vpc-web-server/) | VPC design, public/private subnets, IGW & NAT routing, security groups, EC2 bootstrap | ✅ Complete |
| 03 | [Introduction to Amazon EC2](lab-03-ec2-intro/) | EC2 lifecycle, termination/stop protection, monitoring & logs, security group firewall, resizing compute & storage | ✅ Complete |
| 04 | [Working with Amazon EBS](lab-04-ebs-volumes/) | Block storage, volume attach/format/mount, `/etc/fstab` persistence, snapshots, backup & recovery | ✅ Complete |

*More labs from the cloud security module will be added here as they're completed.*

---

## Core Themes

Across these labs, a handful of principles come up again and again:

- **Network isolation** — using VPCs and subnets to segment resources by trust level.
- **Public vs. private routing** — a subnet's exposure is defined by its route table target (Internet Gateway vs. NAT Gateway), not by the subnet itself.
- **Least privilege** — security groups and rules that permit only what's needed and nothing more.
- **High availability** — spreading resources across Availability Zones.
- **Repeatable provisioning** — user-data and scripting as the entry point to infrastructure-as-code.

---

## Environment

- **Provider:** Amazon Web Services (AWS)
- **Lab platform:** AWS Academy
- **Primary region:** `us-east-1` (N. Virginia)

---

*Architecture diagrams within each lab are from the lab materials; console screenshots are my own captures from completing the labs.*

---

## License

Released under the [MIT License](LICENSE).
