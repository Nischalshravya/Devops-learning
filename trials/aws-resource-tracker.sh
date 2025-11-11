#!/bin/bash
resourcetracker=/home/ubuntu/trials/resourcetracker
echo " Below are AWS S3 buckets." "   " >> $resourcetracker
aws s3 ls >> $resourcetracker
echo " Below are the EC2 instances " " " >> $resourcetracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> $resourcetracker
echo " Below are lambda functions. " "  " >> $resourcetracker
aws lambda list-functions >> $resourcetracker
echo " Below are AWS users " "   " >> $resourcetracker
aws iam list-users >> $resourcetracker
