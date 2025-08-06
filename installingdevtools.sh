nano basic-devops.sh  
Paste the entire script (right-click or Ctrl+Shift+V)  

#!/bin/bash
set -e

echo "🚀 Starting DevOps setup..."

# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y \
    git curl wget unzip gnupg software-properties-common \
    ca-certificates apt-transport-https lsb-release

# -------------------
# Git
echo "📦 Installing Git..."
sudo apt install -y git

# -------------------
# Docker & Docker Compose
echo "🐳 Installing Docker & Docker Compose..."
sudo apt remove -y docker docker-engine docker.io containerd runc || true
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker $USER

# -------------------
# Jenkins
echo "🔧 Installing Jenkins..."
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install -y openjdk-17-jdk jenkins

# -------------------
# Ansible
echo "⚙️ Installing Ansible..."
sudo apt install -y ansible

# -------------------
# Terraform
echo "🌍 Installing Terraform..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor \
    -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt install -y terraform

# -------------------
# kubectl
echo "☸️ Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# -------------------
# Helm
echo "📦 Installing Helm..."
curl https://baltocdn.com/helm/signing.asc | sudo gpg --dearmor \
  -o /usr/share/keyrings/helm.gpg

echo "deb [signed-by=/usr/share/keyrings/helm.gpg] \
  https://baltocdn.com/helm/stable/debian/ all main" | \
  sudo tee /etc/apt/sources.list.d/helm-stable-debian.list

sudo apt update
sudo apt install -y helm

# -------------------
# AWS CLI v2
echo "☁️ Installing AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip

# -------------------
# Node.js LTS
echo "📦 Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# -------------------
# Python & pip
echo "🐍 Installing Python and pip..."
sudo apt install -y python3 python3-pip

echo "✅ DevOps tools installation completed!"
echo "🔄 Please reboot or log out/log in for Docker group changes to take effect."


Save and exit:  
Press Ctrl+O, then Enter to save  
Press Ctrl+X to exit    

Make the Script Executable  
chmod +x basic-devops.sh  

Run the Script  
./basic-devops.sh  
