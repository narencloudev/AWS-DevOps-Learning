# 🧠 Git & Linux Commands A to Z Cheat Sheet

> Everything you need to know about Git and Linux — from setup to advanced commands.

---

## 📚 Table of Contents

### 🧠 Git Commands A–Z
- [A. Git Configuration](#a-git-configuration)
- [B. Initialize Repository](#b-initialize-repository)
- [C. Clone a Repository](#c-clone-a-repository)
- [D. Add Files](#d-add-files)
- [E. Commit Changes](#e-commit-changes)
- [F. View Status](#f-view-status)
- [G. Log History](#g-log-history)
- [H. Branching](#h-branching)
- [I. Merge Branches](#i-merge-branches)
- [J. Push to Remote](#j-push-to-remote)
- [K. Pull from Remote](#k-pull-from-remote)
- [L. Fetch Updates](#l-fetch-updates)
- [M. Remove Files](#m-remove-files)
- [N. Reset Changes](#n-reset-changes)
- [O. Revert Commits](#o-revert-commits)
- [P. Clean Up](#p-clean-up)
- [Q. SSH Key Setup](#q-ssh-key-setup-optional)
- [R. Stash Changes](#r-stash-changes)
- [S. Show Changes](#s-show-changes)
- [T. Tag a Release](#t-tag-a-release)
- [U. Rename Branch](#u-rename-branch)
- [V. Remote Commands](#v-remote-commands)
- [W. Search Commits](#w-search-commits)
- [X. Sign Commits](#x-sign-commits-gpg)
- [Y. .gitignore Example](#y-gitignore-example)
- [Z. Delete Branches](#z-delete-branches)
- [✅ Tips & Best Practices](#-tips--best-practices)
- [📚 Bonus: Git Aliases](#-bonus-aliases-for-speed)

---

### 🧠 Linux Commands A–Z (Grouped)
- [🌐 NETWORKING COMMANDS](#-networking-commands)
- [🗃️ FILE & DIRECTORY COMMANDS](#️-file--directory-commands)
- [⚙️ SYSTEM & PROCESS COMMANDS](#️-system--process-commands)
- [🧑‍💻 DEVOPS & SERVER COMMANDS](#-devops--server-commands)
- [👤 USER & PERMISSION COMMANDS](#-user--permission-commands)
- [📦 PACKAGE MANAGEMENT](#-package-management)
- [🔀 MISCELLANEOUS ESSENTIALS](#-miscellaneous-essentials)
- [✅ BONUS TIPS](#-bonus-tips)

---

# 🧠 Git Commands A to Z Cheat Sheet

> Everything you need to know about Git, from setup to advanced commands.

---

## 🔧 A. Git Configuration

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --list
```

📍 *Set your Git identity (name/email) and view current configuration.*

---

## 🧰 B. Initialize Repository

```bash
git init
```

📍 *Create a new local Git repository in your current directory.*

---

## 🧲 C. Clone a Repository

```bash
git clone https://github.com/username/repo.git
```

📍 *Download (clone) a repository from GitHub or any Git server.*

---

## 📁 D. Add Files

```bash
git add .
git add filename
```

📍 *Stage files to prepare them for committing (all or specific).*

---

## 🧾 E. Commit Changes

```bash
git commit -m "Your message"
```

📍 *Record your staged changes in the Git history with a message.*

---

## 📌 F. View Status

```bash
git status
```

📍 *Check what’s changed, staged, or untracked in your working directory.*

---

## 📜 G. Log History

```bash
git log
```

📍 *View a detailed list of all past commits.*

---

## 🌿 H. Branching

```bash
git branch
git branch new-branch
git checkout new-branch
git checkout -b new-branch
```

📍 *Create and switch between different branches for features or fixes.*

---

## 🔁 I. Merge Branches

```bash
git checkout main
git merge feature-branch
```

📍 *Combine changes from one branch into another.*

---

## 📤 J. Push to Remote

```bash
git push
git push -u origin main
```

📍 *Upload your commits to a remote repository like GitHub.*

---

## 📥 K. Pull from Remote

```bash
git pull
```

📍 *Fetch and merge updates from the remote to your current branch.*

---

## 🛒 L. Fetch Updates

```bash
git fetch
```

📍 *Download changes from remote without automatically merging.*

---

## ❌ M. Remove Files

```bash
git rm filename
```

📍 *Delete a file from your working directory and stage the removal.*

---

## 🔄 N. Reset Changes

```bash
git reset HEAD filename
git reset --hard
```

📍 *Unstage a file or discard all changes and revert to the last commit.*

---

## 💣 O. Revert Commits

```bash
git revert <commit>
```

📍 *Undo a specific commit by creating a new one that reverses it.*

---

## 🧹 P. Clean Up

```bash
git clean -fd
```

📍 *Remove all untracked files and directories (careful!).*

---

## 🔒 Q. SSH Key Setup (optional)

```bash
ssh-keygen -t ed25519 -C "you@example.com"
```

📍 *Generate an SSH key to securely connect GitHub without passwords.*

---

## 🧪 R. Stash Changes

```bash
git stash
git stash list
git stash pop
```

📍 *Temporarily save changes that you don’t want to commit yet.*

---

## 🧮 S. Show Changes

```bash
git diff
```

📍 *View changes in your working directory that haven’t been staged.*

---

## 🧵 T. Tag a Release

```bash
git tag v1.0.0
git push origin v1.0.0
```

📍 *Mark a specific commit as a version release.*

---

## 🏷️ U. Rename Branch

```bash
git branch -m old-name new-name
```

📍 *Rename a branch locally.*

---

## 🌐 V. Remote Commands

```bash
git remote -v
git remote add origin URL
git remote remove origin
```

📍 *View, add, or remove remote repositories like GitHub.*

---

## 🔍 W. Search Commits

```bash
git log --grep="keyword"
```

📍 *Search commit messages using a specific keyword.*

---

## 🔐 X. Sign Commits (GPG)

```bash
git commit -S -m "signed commit"
```

📍 *Sign your commits for added security and verification.*

---

## 📄 Y. .gitignore Example

```gitignore
node_modules/
.env
*.log
.DS_Store
```

📍 *Tell Git to ignore unnecessary or sensitive files.*

---

## 🗑️ Z. Delete Branches

```bash
git branch -d branch-name     # Safe delete (merged)
git branch -D branch-name     # Force delete
```

📍 *Delete branches safely or forcefully (if not merged).*

---

## ✅ Tips & Best Practices

- Use `git status` often to stay informed.
- Commit frequently with clear messages.
- Pull before you push to avoid conflicts.
- Use branches for new features and experiments.
- Keep `.gitignore` updated to prevent accidental pushes.

---

## 📚 Bonus: Aliases for Speed

```bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
```

📍 *Create short aliases to speed up your workflow.*

---

## ✨ Made with ❤️ by YourGitHubUsername

> Keep exploring. Keep building. 💻


# 🧠 Linux Commands A to Z Cheat Sheet

# 🧠 Linux Commands A to Z — Grouped Cheat Sheet

> A categorized guide to essential Linux commands with explanations and usage contexts.

---

## 🌐 NETWORKING COMMANDS

### 🔹 `ip`
```bash
ip a
```
📘 Shows IP addresses and interfaces  
📍 Use for checking or configuring network interfaces.

---

### 🔹 `ping`
```bash
ping example.com
```
📘 Test connectivity with a server  
📍 Basic network troubleshooting.

---

### 🔹 `traceroute`
```bash
traceroute google.com
```
📘 Trace the path packets take to a destination  
📍 Diagnose routing/network path issues.

---

### 🔹 `netstat`
```bash
netstat -tulnp
```
📘 Lists open ports and listening services  
📍 Identify what services are running on which ports.

---

### 🔹 `curl`
```bash
curl https://example.com
```
📘 Transfer data from or to a server  
📍 Test APIs, download content, etc.

---

### 🔹 `wget`
```bash
wget https://example.com/file.zip
```
📘 Download files from the web  
📍 Useful in scripts for automated downloads.

---

## 🗃️ FILE & DIRECTORY COMMANDS

### 🔹 `ls`
```bash
ls -lah
```
📘 List directory contents with details  
📍 Everyday file navigation.

---

### 🔹 `cp`
```bash
cp source.txt destination.txt
```
📘 Copy files and folders  
📍 Backup or duplicate files.

---

### 🔹 `mv`
```bash
mv file.txt /path/
```
📘 Move or rename files  
📍 Organize directories or rename files.

---

### 🔹 `rm`
```bash
rm file.txt
rm -rf folder/
```
📘 Delete files or directories  
📍 Clean up files — use with caution!

---

### 🔹 `find`
```bash
find / -name "*.log"
```
📘 Search for files  
📍 Locate files by name/type anywhere on the system.

---

### 🔹 `du`
```bash
du -sh *
```
📘 Show disk usage  
📍 Find out which folders use the most space.

---

### 🔹 `df`
```bash
df -h
```
📘 Display disk free space  
📍 Monitor storage usage per mount point.

---

## ⚙️ SYSTEM & PROCESS COMMANDS

### 🔹 `top`
```bash
top
```
📘 Real-time process and resource monitor  
📍 Monitor CPU, memory, running processes.

---

### 🔹 `ps`
```bash
ps aux
```
📘 Show running processes  
📍 List everything currently executing.

---

### 🔹 `kill`
```bash
kill -9 PID
```
📘 Terminate a process by PID  
📍 End stuck or misbehaving processes.

---

### 🔹 `htop`
```bash
htop
```
📘 Interactive process viewer (like `top` but better)  
📍 Easier to use with color and mouse support.

---

### 🔹 `uptime`
```bash
uptime
```
📘 Show how long the system has been running  
📍 Good for checking system stability.

---

## 🧑‍💻 DEVOPS & SERVER COMMANDS

### 🔹 `systemctl`
```bash
sudo systemctl restart nginx
```
📘 Control services (start, stop, restart)  
📍 Used to manage services like Apache, Nginx, MySQL.

---

### 🔹 `journalctl`
```bash
journalctl -xe
```
📘 View systemd logs  
📍 Debug services managed by `systemd`.

---

### 🔹 `crontab`
```bash
crontab -e
```
📘 Edit user cron jobs  
📍 Schedule tasks/scripts to run at intervals.

---

### 🔹 `ssh`
```bash
ssh user@hostname
```
📘 Remote login via secure shell  
📍 Manage remote Linux servers.

---

### 🔹 `scp`
```bash
scp file.txt user@host:/path/
```
📘 Securely copy files over SSH  
📍 Deploy code/files to remote machines.

---

### 🔹 `rsync`
```bash
rsync -avz file user@host:/path/
```
📘 Sync files/directories between machines  
📍 Used in backup, deployment, or mirroring.

---

## 👤 USER & PERMISSION COMMANDS

### 🔹 `chmod`
```bash
chmod 755 script.sh
```
📘 Change file permissions  
📍 Make scripts executable, set security levels.

---

### 🔹 `chown`
```bash
chown user:group file.txt
```
📘 Change file ownership  
📍 Fix permission issues across users.

---

### 🔹 `adduser` / `useradd`
```bash
sudo adduser newuser
```
📘 Add a new user  
📍 Grant login access or isolate environments.

---

### 🔹 `passwd`
```bash
passwd username
```
📘 Change a user’s password  
📍 Reset passwords securely.

---

## 📦 PACKAGE MANAGEMENT

### 🔹 `apt` (Debian/Ubuntu)
```bash
sudo apt update && sudo apt upgrade
sudo apt install nginx
```
📘 Manage packages  
📍 Install, update, upgrade software.

---

### 🔹 `dnf` / `yum` (RHEL/Fedora)
```bash
sudo dnf install httpd
```
📘 Install packages on RPM-based systems  
📍 RHEL/CentOS/Fedora users.

---

### 🔹 `snap`
```bash
snap install --classic code
```
📘 Universal Linux packages  
📍 For sandboxed, cross-distro apps.

---

## 🔀 MISCELLANEOUS ESSENTIALS

### 🔹 `man`
```bash
man rsync
```
📘 View help/manual for a command  
📍 Learn options and usage examples.

---

### 🔹 `alias`
```bash
alias ll='ls -lah'
```
📘 Create custom shortcuts  
📍 Speed up common tasks.

---

### 🔹 `uname`
```bash
uname -a
```
📘 Show system info  
📍 Kernel, OS version, architecture.

---

### 🔹 `echo`
```bash
echo $HOME
```
📘 Print to terminal  
📍 Show environment variables or test output.

---

### 🔹 `tar`
```bash
tar -czvf archive.tar.gz folder/
```
📘 Archive and compress files  
📍 Create backups or compress logs.

---

### 🔹 `whoami`
```bash
whoami
```
📘 Display current username  
📍 Confirm active user in terminal.

---

### 🔹 `uptime`
```bash
uptime
```
📘 Show how long the system has been running  
📍 Monitor server health.

---

## ✅ BONUS TIPS

- `sudo !!` – Rerun last command with sudo  
- `Ctrl + R` – Reverse history search  
- `&&` – Run second command only if first succeeds  
- `>` / `>>` – Redirect output (overwrite/append)  
- `|` – Pipe output to next command

---

## ✨ Made with ❤️ by YourLinuxDoc

> Use, fork, and improve! Happy Hacking 🐧
