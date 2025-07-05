#!/bin/bash

# ============================
# AWS Troubleshooting Demo Script
# ============================

# Variables
KEY_NAME="demo-key"
SECURITY_GROUP="demo-sg"
REGION="us-east-1"
AMI_ID="ami-0c02fb55956c7d316"
INSTANCE_TYPE="t2.micro"

echo "🚀 Starting AWS deployment in region $REGION..."

# Create key pair
echo "🔑 Creating key pair: $KEY_NAME"
aws ec2 create-key-pair \
  --key-name $KEY_NAME \
  --query 'KeyMaterial' \
  --output text > ${KEY_NAME}.pem
chmod 400 ${KEY_NAME}.pem

# Create security group
echo "🔐 Creating security group: $SECURITY_GROUP"
SG_ID=$(aws ec2 create-security-group \
  --group-name $SECURITY_GROUP \
  --description "Security group for demo" \
  --region $REGION \
  --query 'GroupId' \
  --output text)

# Add rule for port 22 (SSH)
aws ec2 authorize-security-group-ingress \
  --group-id $SG_ID \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0 \
  --region $REGION

# Launch EC2 instance
echo "📦 Launching EC2 instance..."
aws ec2 run-instances \
  --image-id $AMI_ID \
  --count 1 \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SG_ID \
  --region $REGION \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=DemoInstance}]'

echo "✅ Done! EC2 instance launched."
