# demo-project
Project code

# Build Packer Images
Pre-Baked Base AMI
Prerequisite : ssh keypair(id_rsa, authorized_keys)
- Bastion Server(Jumphost) AMI
  - 
- Ansible Control Machine AMI
  - python2.7
  - ssh-key
  - ansible
  
- Services AMI
  - ssh-key
  - pyhton2.7
  - nodejs
  - newrelic
  - splunk-agent 
 ( - makefile for .deb package)
  
- Database AMI
  - mongodb
  - ssh-key
  - newrelic
  - python2.7
  
- Splunk Server AMI
  - pyhton2.7
  - ssh-key
  - newrelic
  
- Jenkins Server for CI/CD
  - newrelic
  - jenkins
  - ssh-key
 

# Terraform For Infrastructure
Infrastructure Building
- Staging Environment
- Production Environment

# Ansible Playbook with Roles 
Deploying Package
- WebApp package
- Service package
- DB dump import
