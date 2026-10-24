# AWS Three-Tier Architecture (Terraform)

Author: devopsbydhairyashil (https://www.linkedin.com/in/dhairyashilclouddevops/)
Default AWS region: us-west-2

This repository contains a ready-to-run AWS 3-tier architecture using Terraform:
- Presentation (ALB + EC2 web servers)
- Application (EC2 backend tier in private subnets)
- Database (RDS MySQL, Multi-AZ)

Replace placeholder values (AMI, key name, DB password) before running terraform apply.
Do not commit real secrets. Use Terraform variables, environment variables, or AWS Secrets Manager.

Files:
- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf
- userdata_web.sh
- architecture-diagram.png

Quick start:
1. Install Terraform (>= 1.4)
2. Configure AWS credentials
3. terraform init
4. terraform plan -var="db_password=YOUR_DB_PASSWORD" -out=tfplan
5. terraform apply tfplan

Update public_ami in variables.tf to a valid AMI for the region.
