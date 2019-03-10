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


Task :
1. Bastion AMI : Nelosree/Ela/Sunil/Surabhi/Tapsi
2. Ansible-Control AMI : Ritika/Aravind/Vinia/Sparsh/Revathi
3. App Docker Base AMI : Bhupendra/Ansukh/Jacintha/Akash/Yash/Chatan
4. Service AMI : Neha/Ravi/RaviRanjan/Shaquib/Pramod
5. Databse AMI : Manish/Megha/Ashish/Anek/Kasi/Kondareddy/Ayyapa
6. Ansible Configuration: 
  - Roles for deploy node package - 
  - Node App Deploy Role - Manish/Megha/Ashish/Anek/Kasi/Kondareddy/Ayyapa/Bhupendra/Ansukh/Jacintha/Akash/Yash/Chatan
  - Docker App Deploy Role - Nelosree/Ela/Sunil/Surabhi/Tapsi/Neha/Ravi/RaviRanjan/Shaquib/Pramod/Ritika/Aravind/Vinia/Sparsh/Revathi
7. Terraform task - Vinod
  - Module for Our Infra - VPC,EC2,LB
  - Staging Module
  - Production Module
  
8. Splunk Server Setup - Vinod

9. Jenkins CI/CD - Vinod/Prem/Yash
  
  
  
