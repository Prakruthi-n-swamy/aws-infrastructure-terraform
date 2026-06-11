# aws-infrastructure-terraform
Terraform modules for provisioning AWS infrastructure including SQS, SNS, Lambda, IAM and EC2 resources.

## Components

### Messaging Layer

- Amazon SQS
- Amazon SNS

### Compute Layer

- AWS Lambda
- Amazon EC2

### Infrastructure Features

- Reusable Modules
- Environment Separation
- Terraform Validation Pipeline

## Architecture

```text
SNS Topic
    |
    v
SQS Queue
    |
    v
Lambda Consumer

EC2 Linux Server
```

## Technologies

- Terraform
- AWS
- GitHub Actions

## Folder Structure

modules/
environments/
.github/workflows/

## Future Improvements

- VPC Module
- IAM Policies
- CloudWatch Alarms
- Auto Scaling Groups
- EKS Cluster
