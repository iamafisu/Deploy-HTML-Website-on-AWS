# Deploy-HTML-Website-on-AWS

Certainly! Below is a template for a README file for your GitHub repository containing the provided script.

```
# AWS Web Server Deployment Script

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Description

The AWS Web Server Deployment Script automates the process of setting up a web server on an AWS EC2 instance. It installs Apache HTTP Server (httpd) and deploys a web application from an S3 bucket. The script is written in Bash and designed to run on an Amazon Linux EC2 instance.

## Prerequisites

Before running this script, ensure that you have:

1. An AWS EC2 instance running with Amazon Linux.
2. Appropriate IAM permissions to access S3 buckets and install software packages.

## Installation and Usage

1. Connect to your Amazon Linux EC2 instance using SSH.

2. Download the deployment script to your instance:
   ```bash
   wget https://raw.githubusercontent.com/yourusername/your-repo-name/main/deploy-web-server.sh
   ```

3. Make the script executable:
   ```bash
   chmod +x deploy-web-server.sh
   ```

4. Execute the script with superuser privileges:
   ```bash
   sudo ./deploy-web-server.sh
   ```

## Script Steps

1. Update the package index on the EC2 instance:
   ```bash
   yum update -y
   ```

2. Install Apache HTTP Server (httpd):
   ```bash
   yum install -y httpd
   ```

3. Navigate to the web root directory:
   ```bash
   cd /var/www/html
   ```

4. Copy the web application files from an S3 bucket to the instance:
   ```bash
   aws s3 cp s3://webfiles-s3/mole.zip molefroms3.zip
   ```

5. Unzip the web application files:
   ```bash
   unzip molefroms3.zip
   ```

6. Move the web application files to the web root directory:
   ```bash
   cp -r mole-main/* /var/www/html/
   ```

7. Clean up - remove unnecessary files and directories:
   ```bash
   rm -rf mole-main molefroms3.zip
   ```

8. Enable the httpd service to start on boot:
   ```bash
   systemctl enable httpd
   ```

9. Start the httpd service:
   ```bash
   systemctl start httpd
   ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

Replace `[yourusername]` and `[your-repo-name]` in the script download link with your actual GitHub username and repository name. Additionally, customize the README with any specific instructions or explanations related to your script.
