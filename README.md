# AWS Troubleshooting Demo

This project is a practical demonstration of how to identify and solve common errors in AWS environments.

## Objective

To provide a step-by-step approach for detecting, diagnosing, and resolving common issues in services such as EC2, IAM, Billing, and more.

## Project Structure

```
aws-troubleshooting-demo/
├── README.md                     # Main project documentation
├── deploy_script.sh              # Script to deploy EC2 resources
├── fix_logs.md                   # Explanation of errors and fixes
├── troubleshooting.md            # Step-by-step troubleshooting guide
├── terraform/                    # Infrastructure as Code (Terraform)
│   ├── main.tf
│   └── screenshots/
│       ├── billing-alert.png     # Budget alert screenshot
│       └── iam-policy-error.png  # Common IAM error screenshot
├── architecture-diagram.png      # System architecture diagram
```



## Tools Used

- AWS CLI
- Terraform
- Bash
- IAM Policies
- CloudWatch

## Architecture Diagram

![Architecture Diagram](screenshots/architecture-diagram.png)

## How to Use This Project

1. Clone the repository.
2. Run `deploy_script.sh` to deploy the environment (if applicable).
3. Reproduce the documented errors and follow the resolution steps.
4. Check logs and screenshots inside the `/screenshots` folder.

## Skills Demonstrated

- Identification of common AWS errors
- Deployment automation using Bash and Terraform
- Troubleshooting best practices

---



