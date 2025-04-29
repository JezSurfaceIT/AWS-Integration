# AWS Integration

This repository contains AWS integration code and configurations.

## Description

A collection of AWS integration scripts, configurations, and utilities for managing AWS services and resources.

## Getting Started

### Prerequisites

- AWS CLI installed
- AWS account with appropriate permissions
- Git

### AWS Configuration Setup

1. Clone this repository
2. Run the setup script:
   ```bash
   ./aws/scripts/setup_aws.sh
   ```
3. Edit the AWS configuration files:
   - `~/.aws/config` - Configure your AWS regions and output format
   - `~/.aws/credentials` - Add your AWS access keys

### Security Notes

- Never commit actual AWS credentials to the repository
- The `.gitignore` file is configured to exclude sensitive credential files
- Always use appropriate IAM roles and permissions
- Rotate credentials regularly

## Project Structure

```
aws/
├── config/           # AWS configuration templates
├── credentials/      # AWS credentials templates (DO NOT COMMIT ACTUAL CREDENTIALS)
└── scripts/          # Utility scripts for AWS setup and management
```

## License

This project is licensed under the MIT License - see the LICENSE file for details. 