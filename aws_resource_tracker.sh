#!/bin/bash

############################
# Author: Ron
# Date: 11/15/23
# 
# Version: 1.0
#
# This script will report AWS resource usage
############################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List S3 buckets
echo "Print list of S3 buckets"
aws s3 ls

# List EC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

# List Lambda functions
echo "Print list of Lambda functions"
aws lambda list-functions

# List IAM users
echo "Print list of IAM users"
aws iam list-users | jq '.Users[].UserName'
