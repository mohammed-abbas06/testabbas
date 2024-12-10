import os
import boto3


# Read environment variables and convert them into lists
application_name = os.getenv('APPLICATION_NAME')
deployment_group_name = os.getenv('DEPLOYMENT_GROUP_NAME')

print(application_name)
print(deployment_group_name)
