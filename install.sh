#!/bin/bash

# Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform

# Install Terraspace Gem Dependencies
gem install azure_info-0.1.5.gem
gem install armrest-0.1.3.gem

# Install Terraspace
rpm -ivh terraspace-latest.rpm

# Version Checks
terraform version
terraspace version
