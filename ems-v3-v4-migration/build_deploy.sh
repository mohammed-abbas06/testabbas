#!/bin/bash

# Check the number of command-line arguments
if [ $# -ne 1 ]; then
  echo "Usage: $0 [env]"
  echo "[env] - dev, qa, stg, pt, prod"
  exit 1
fi

# Get the environment from the command-line argument
env="$1"

# Validate the environment
case "$env" in
  dev|qa|stg|pt|prod)
    ;;
  *)
    echo "Invalid environment. Please use one of: dev, qa, stg, pt, prod."
    exit 1
    ;;
esac

# Run the SAM deploy command with the specified environment
sam deploy --no-confirm-changeset --no-fail-on-empty-changeset --template-file template.yaml --stack-name my-stack-name-$env --parameter-overrides Environment=$env --s3-bucket sam-temp-test-ems --capabilities CAPABILITY_IAM --region us-west-2

# Check the exit status of the sam deploy command
if [ $? -eq 0 ]; then
  echo "SAM deployment completed successfully."
else
  echo "SAM deployment failed."
fi
