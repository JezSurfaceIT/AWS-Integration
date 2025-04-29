#!/bin/bash

# Create AWS config directory if it doesn't exist
mkdir -p ~/.aws

# Copy config template if config doesn't exist
if [ ! -f ~/.aws/config ]; then
    echo "Copying AWS config template..."
    cp aws/config/config.template ~/.aws/config
    echo "Please edit ~/.aws/config with your actual AWS configuration"
fi

# Copy credentials template if credentials don't exist
if [ ! -f ~/.aws/credentials ]; then
    echo "Copying AWS credentials template..."
    cp aws/credentials/credentials.template ~/.aws/credentials
    echo "Please edit ~/.aws/credentials with your actual AWS credentials"
fi

# Set appropriate permissions
chmod 600 ~/.aws/credentials
chmod 600 ~/.aws/config

echo "AWS configuration setup complete!"
echo "Please ensure you have:"
echo "1. AWS CLI installed (aws --version)"
echo "2. Edited ~/.aws/config with your regions"
echo "3. Edited ~/.aws/credentials with your access keys"
echo "4. Tested your configuration with: aws sts get-caller-identity" 