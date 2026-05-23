#!/bin/bash
echo "🧹 Cleaning up AWS resources..."

# Terminate EC2 instance
aws ec2 terminate-instances --region eu-north-1 --instance-ids i-07432ba6b3e62e36c

# Delete CloudWatch alarm
aws cloudwatch delete-alarms --region eu-north-1 --alarm-names auto-healing-cpu-alarm

# Delete SNS topic
aws sns delete-topic --region eu-north-1 --topic-arn arn:aws:sns:eu-north-1:533431643253:auto-healing-alerts

echo "✅ Cleanup complete!"
