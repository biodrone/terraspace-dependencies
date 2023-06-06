#!/bin/bash

# Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform

# Install Terraspace Gem Dependencies
sudo gem install azure_info-0.1.5.gem
sudo gem install armrest-0.1.3.gem

# Install Terraspace
sudo rpm -ivh terraspace-latest.rpm

# Version Checks
echo '##### Version Check #####'
terraform version
terraspace version
echo '##### Version Check #####'
