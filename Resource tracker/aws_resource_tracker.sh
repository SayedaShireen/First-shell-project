#!/bin/bash

##################
# Author: Shireen
# Date: 23rd May
#
# Version: v1
#
# This script will report AWS resource usage
##################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# List ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS Lambda functions
echo "Print list of lambda functions"
aws lambda list-functions

# List IAM users
echo "Print list of IAM users"
aws iam list-users
