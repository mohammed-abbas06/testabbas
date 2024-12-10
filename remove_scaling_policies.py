import os
import boto3

client = boto3.client('autoscaling')

# Read environment variables and convert them into lists
application_name = os.getenv('APPLICATION_NAME').split(',')
deployment_group_name = os.getenv('DEPLOYMENT_GROUP_NAME').split(',')

print(application_name)
print(deployment_group_name)
