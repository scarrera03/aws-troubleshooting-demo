# Troubleshooting Guide

## Table of Contents

- [Key Pair Not Created / Permission Denied](#️-key-pair-not-created--permission-denied)
- [InvalidGroup.Duplicate](#️-invalidgroupduplicate)
- [Unable to Locate Credentials](#️-unable-to-locate-credentials)

---

## ❌ Key Pair Not Created / Permission Denied

### Problem Description
When running the `deploy_script.sh` script, the following error appeared:

```bash
./deploy_script.sh: line 18: demo-key.pem: Permission denied
Additionally, when trying to launch the EC2 instance, it failed with:

An error occurred (InvalidKeyPair.NotFound) when calling the RunInstances operation: The key pair 'demo-key' does not exist

Cause
The script attempted to create a key pair (demo-key.pem), but:

The file demo-key.pem already existed with restrictive permissions

The content was empty (0 bytes) due to a previous error

The aws ec2 create-key-pair command could not overwrite it

This caused the EC2 instance launch to fail

Solution
1. Exit the viewer by pressing q if you were viewing pasted text

2. Delete the local file:
rm demo-key.pem

3. Delete the key pair in AWS:
aws ec2 delete-key-pair --key-name demo-key

4. Run the script again:
./deploy_script.sh

Expected Result
demo-key.pem is successfully created

The EC2 instance DemoInstance is launched in the correct region

❌ InvalidGroup.Duplicate

Problem Description
When executing the script, it attempted to create a security group named demo-sg, but it already existed in the VPC.
Error Message
An error occurred (InvalidGroup.Duplicate) when calling the CreateSecurityGroup operation:  
The security group 'demo-sg' already exists for VPC 'vpc-xxxxxxxxxxxxxxxxx'

Solution
Check if the security group already exists in the EC2 console. If it does, you can either:

Reuse it directly in the script, or

Delete it with the following command:

aws ec2 delete-security-group --group-name demo-sg

❌ Unable to Locate Credentials

Problem Description
The script couldn't authenticate with AWS because credentials were not configured.


Error Message
Unable to locate credentials. You can configure credentials by running "aws configure".

Solution
Run the following command:

aws configure

Then enter:

AWS Access Key ID

AWS Secret Access Key

Default region (e.g., us-east-1)

Output format (optional, e.g., json)


