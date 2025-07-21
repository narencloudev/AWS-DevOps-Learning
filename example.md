Perfect. Below is a deep, complete .md README covering Linux, Git, Jenkins, and Docker, with all commands inside bash blocks for single-click copy. Each command is explained with syntax, usage, and description — and internal links are provided for easy navigation.

You can copy-paste this entire block as a single README.md.


---

# 💻 DevOps Master Cheatsheet: Linux + Git + Jenkins + Docker

A full command reference with syntax, usage, and explanation — ideal for beginners to advanced DevOps professionals.

---

## 📚 Table of Contents

- [🧑‍💻 Linux](#-linux)
  - [📁 File & Directory](#️file--directory)
  - [👥 User & Permissions](#user--permissions)
  - [🌐 Networking](#networking)
  - [🧠 System & Processes](#system--processes)
  - [📦 Package Management](#package-management)
  - [🧰 Shell & Utilities](#shell--utilities)

- [🔧 Git](#-git)
  - [⚙️ Setup & Config](#️setup--config)
  - [📁 Repo Basics](#repo-basics)
  - [🌿 Branching & Merging](#branching--merging)
  - [🌍 Remote Operations](#remote-operations)
  - [🧪 Advanced Git](#advanced-git)

- [🧰 Jenkins](#-jenkins)
  - [🛠️ Install & Start](#install--start)
  - [🚦 Jobs & Pipelines](#jobs--pipelines)
  - [🔌 Plugins](#plugins)
  - [🔐 Security](#security)
  - [💻 CLI](#cli)

- [🐳 Docker](#-docker)
  - [🔧 Install & Setup](#install--setup)
  - [📦 Images & Containers](#images--containers)
  - [🗂️ Volumes & Networks](#volumes--networks)
  - [🛠️ Dockerfile & Build](#dockerfile--build)
  - [📜 Docker Compose](#docker-compose)
  - [🧠 Docker Tips](#docker-tips)

---

## 🧑‍💻 Linux

### 📁 File & Directory

```bash
ls -lah             # List all files with human-readable sizes
cd /path/to/dir     # Change directory
pwd                 # Print current working directory
mkdir new_folder    # Create a new directory
touch file.txt      # Create a new empty file
cp source dest      # Copy file or folder
mv old new          # Move or rename file
rm file.txt         # Remove file
rm -rf folder       # Remove folder recursively and forcefully
find . -name "*.sh" # Find all .sh files from current dir
du -sh *            # Show sizes of folders/files in human format
df -h               # Show disk space usage

👥 User & Permissions

whoami                     # Show current user
id                         # Show UID, GID, groups
adduser username           # Add new user
passwd username            # Set/change user password
chmod 755 file.sh          # Set file permissions (rwxr-xr-x)
chown user:group file      # Change file ownership
groups                     # List groups for current user

🌐 Networking

ip a                       # Show IP addresses
ping google.com            # Test network connectivity
traceroute example.com     # Show route to host
netstat -tulnp             # Show active listening ports
ss -tuln                   # Replacement for netstat
curl ifconfig.me           # Get public IP address
wget http://example.com    # Download file from URL

🧠 System & Processes

ps aux                     # Show running processes
top                        # Realtime process viewer
htop                       # Interactive process viewer (better top)
kill -9 <PID>              # Force kill process
free -h                    # Show memory usage
uptime                     # Show system uptime
uname -a                   # Show OS kernel info
reboot                     # Restart the system
shutdown now               # Shutdown immediately

📦 Package Management

Ubuntu / Debian:

sudo apt update                  # Update packages index
sudo apt upgrade -y             # Upgrade all packages
sudo apt install nginx -y       # Install package
sudo apt remove nginx -y        # Uninstall package
sudo apt autoremove             # Remove unused packages

RHEL / Fedora:

sudo dnf install httpd -y       # Install Apache server
sudo yum install vim -y         # Install VIM editor
sudo dnf remove httpd -y        # Remove package
sudo dnf autoremove             # Clean up

🧰 Shell & Utilities

man ls                          # Show manual for command
alias ll='ls -lh'               # Create alias
history                         # View command history
echo $HOME                      # Print environment variable
export VAR=value                # Set environment variable
tar -czvf file.tar.gz folder/  # Archive folder to tar.gz


---

🔧 Git

⚙️ Setup & Config

git config --global user.name "Your Name"     # Set your Git name
git config --global user.email "email@host"   # Set your email
git config --list                             # List all configs

📁 Repo Basics

git init                         # Initialize a new repo
git clone <repo-url>             # Clone remote repo
git status                       # Show status of files
git add .                        # Stage all changes
git commit -m "msg"              # Commit staged changes
git log                          # Show commit history
git diff                         # Show changes not staged

🌿 Branching & Merging

git branch                       # List branches
git branch new-feature           # Create new branch
git checkout new-feature         # Switch to branch
git checkout -b feature-x        # Create and switch
git merge feature-x              # Merge branch to current
git branch -d feature-x          # Delete branch

🌍 Remote Operations

git remote -v                              # Show remote repos
git remote add origin <url>                # Add remote repo
git push -u origin main                    # Push code to main
git pull origin main                       # Pull from remote
git fetch                                  # Get latest metadata

🧪 Advanced Git

git stash                                  # Save uncommitted changes
git stash pop                              # Reapply stashed changes
git reset --hard HEAD~1                    # Reset last commit
git revert <commit>                        # Create revert commit
git cherry-pick <commit>                   # Apply commit from elsewhere


---

🧰 Jenkins

🛠️ Install & Start

sudo apt update
sudo apt install openjdk-11-jdk -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins

Access Jenkins: http://localhost:8080

🚦 Jobs & Pipelines

# Example Jenkins Declarative Pipeline
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing...'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying...'
      }
    }
  }
}

🔌 Plugins

# Manage Jenkins > Plugin Manager
# Or CLI:
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin git workflow-aggregator docker-plugin

🔐 Security

# UI: Manage Jenkins > Configure Global Security
# Enable security, setup users, disable anonymous access

💻 CLI

java -jar jenkins-cli.jar -s http://localhost:8080/ help
java -jar jenkins-cli.jar -s http://localhost:8080/ list-jobs
java -jar jenkins-cli.jar -s http://localhost:8080/ build job-name


---

🐳 Docker

🔧 Install & Setup

sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

📦 Images & Containers

docker pull nginx                      # Pull image
docker images                          # List images
docker run -d -p 8080:80 nginx         # Run container in background
docker ps -a                           # List containers
docker exec -it <id> bash              # Enter running container
docker stop <id>                       # Stop container
docker rm <id>                         # Remove container
docker rmi <id>                        # Remove image

🗂️ Volumes & Networks

docker volume create myvol             # Create volume
docker network create mynet            # Create network
docker run -v myvol:/data --network=mynet nginx

🛠️ Dockerfile & Build

# Dockerfile Example
FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]

docker build -t myapp .
docker run -p 3000:3000 myapp

📜 Docker Compose

# docker-compose.yml
version: "3"
services:
  web:
    image: nginx
    ports:
      - "8080:80"

docker-compose up -d
docker-compose down

🧠 Docker Tips

docker logs <container>               # Show logs
docker inspect <container>            # Show low-level info
docker stats                          # Resource usage
docker system prune -a                # Remove all unused images/containers


---

Would you like me to add a version with emojis/icons for UI clarity, or keep it terminal-pure like above?

