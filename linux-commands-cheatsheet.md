# 🐧 Linux Commands A-Z by Category

A practical, categorized reference for essential Linux commands.  
For each command, find the **description** and **syntax** for quick use and learning.

---

## 📁 1. File & Directory Management

| Command   | Description                              | Syntax / Example               |
|-----------|------------------------------------------|-------------------------------|
| `ls`      | List directory contents                  | `ls -l /path/to/dir`          |
| `pwd`     | Print working directory                  | `pwd`                         |
| `cd`      | Change current directory                 | `cd /var/log`                 |
| `mkdir`   | Create new directory                     | `mkdir foldername`            |
| `rmdir`   | Remove empty directory                   | `rmdir foldername`            |
| `rm`      | Remove files or directories              | `rm -rf file.txt foldername/` |
| `cp`      | Copy files or directories                | `cp file1.txt /home/`         |
| `mv`      | Move or rename files/directories         | `mv old.txt new.txt`          |
| `find`    | Search for files & dirs recursively      | `find /home -name "*.txt"`    |
| `touch`   | Create empty file or update timestamp    | `touch file.txt`              |
| `cat`     | Display file contents                    | `cat file.txt`                |
| `more`    | View file contents (paged)               | `more file.txt`               |
| `less`    | View file contents with navigation       | `less file.txt`               |
| `head`    | Show first lines of a file               | `head -n 10 file.txt`         |
| `tail`    | Show last lines of a file                | `tail -n 10 file.txt`         |
| `ln`      | Create links (hard/symbolic)             | `ln -s src.txt link.txt`      |
| `tree`    | Display directory tree                   | `tree /home/user`             |

---

## 📝 2. Text Processing

| Command   | Description                                | Syntax / Example                   |
|-----------|--------------------------------------------|------------------------------------|
| `grep`    | Search for patterns in files               | `grep "word" file.txt`             |
| `awk`     | Pattern scanning and reporting             | `awk '{print $1}' file.txt`        |
| `sed`     | Stream editing text                        | `sed 's/old/new/g' file.txt`       |
| `cut`     | Remove sections from each line             | `cut -d ':' -f1 /etc/passwd`       |
| `sort`    | Sort lines of text files                   | `sort file.txt`                    |
| `uniq`    | Report or filter duplicate lines           | `uniq file.txt`                    |
| `wc`      | Word, line, and character count            | `wc -l file.txt`                   |
| `paste`   | Merge lines of files                       | `paste file1.txt file2.txt`        |
| `join`    | Join lines of two files on a field         | `join a.txt b.txt`                 |

---

## 🔑 3. User & Permission Management

| Command       | Description                                        | Syntax / Example                    |
|---------------|----------------------------------------------------|-------------------------------------|
| `sudo`        | Execute as another user, usually root              | `sudo apt update`                   |
| `useradd`     | Add new user                                       | `sudo useradd alice`                |
| `userdel`     | Delete user                                        | `sudo userdel alice`                |
| `usermod`     | Modify user account                                | `sudo usermod -aG sudo alice`       |
| `passwd`      | Change user password                               | `passwd`                            |
| `chown`       | Change ownership of file/directory                  | `chown user:group file.txt`         |
| `chmod`       | Change permissions                                 | `chmod 755 script.sh`               |
| `groups`      | Show group memberships                             | `groups alice`                      |
| `su`          | Switch user                                        | `su alice`                          |
| `id`          | Show current user & group ID                       | `id`                                |

---

## 🔒 4. Process & System Monitoring

| Command    | Description                             | Syntax / Example            |
|------------|-----------------------------------------|----------------------------|
| `ps`       | List running processes                  | `ps aux`                   |
| `top`      | Live system process monitoring          | `top`                      |
| `htop`     | Improved, colorful top                  | `htop`                     |
| `kill`     | Kill a process by PID                   | `kill 1234`                |
| `killall`  | Kill processes by name                  | `killall firefox`          |
| `jobs`     | List active jobs                        | `jobs`                     |
| `bg`       | Resume suspended job in background      | `bg %1`                    |
| `fg`       | Bring background job to foreground      | `fg %1`                    |
| `uptime`   | Show how long system's been running     | `uptime`                   |
| `free`     | Show memory usage                       | `free -h`                  |
| `df`       | Show disk usage                         | `df -h`                    |
| `du`       | Disk usage of files & directories       | `du -sh /home/user/`       |
| `vmstat`   | Report virtual memory statistics        | `vmstat 1`                 |
| `iostat`   | Report CPU and IO stats                 | `iostat`                   |
| `lsof`     | List open files                         | `lsof`                     |
| `dmesg`    | Kernel ring buffer messages             | `dmesg | less`             |

---

## 🌐 5. Networking

| Command     | Description                                   | Syntax / Example                  |
|-------------|-----------------------------------------------|-----------------------------------|
| `ping`      | Test reachability of a host                   | `ping google.com`                 |
| `ifconfig`  | Show network interfaces (deprecated)          | `ifconfig`                        |
| `ip`        | Show/manipulate routing, network interfaces   | `ip a`                            |
| `netstat`   | Network connections, tables, statistics       | `netstat -tuln`                   |
| `ss`        | Another utility to investigate sockets        | `ss -tuln`                        |
| `traceroute`| Trace the route to a network host             | `traceroute example.com`          |
| `nslookup`  | Query DNS                                    | `nslookup example.com`            |
| `wget`      | Download files via HTTP, FTP                  | `wget http://site.com/file.zip`   |
| `curl`      | Transfer data from/to a server                | `curl -O http://site.com/file.zip`|
| `scp`       | Secure copy over SSH                          | `scp file.txt user@host:/tmp/`    |
| `ssh`       | Remote login via SSH                          | `ssh user@192.168.1.10`           |
| `ftp`       | File Transfer Protocol client                 | `ftp ftp.site.com`                |
| `sftp`      | Secure FTP (over SSH)                         | `sftp user@host`                  |
| `nc`        | Netcat for network debugging                  | `nc -zv example.com 80`           |
| `nmcli`     | NetworkManager command-line tool              | `nmcli device status`             |

---

## 🔍 6. System Information

| Command      | Description                           | Syntax / Example                  |
|--------------|---------------------------------------|-----------------------------------|
| `uname`      | System info (kernel, hardware)        | `uname -a`                        |
| `arch`       | Show CPU architecture                 | `arch`                            |
| `hostname`   | Display or set hostname               | `hostname`                        |
| `date`       | Display/set system date/timestamp     | `date "+%Y-%m-%d %H:%M:%S"`       |
| `whoami`     | Print current user                    | `whoami`                          |
| `uptime`     | How long system’s been running        | `uptime`                          |
| `man`        | Read manual for a command             | `man ls`                          |
| `whatis`     | Short description of a command        | `whatis ls`                       |
| `info`       | Read info docs                        | `info coreutils`                  |
| `history`    | Command history                       | `history`                         |

---

## 🔄 7. Archiving & Compression

| Command    | Description                         | Syntax / Example                    |
|------------|-------------------------------------|-------------------------------------|
| `tar`      | Archive files                       | `tar -cvf archive.tar files/`       |
| `gzip`     | Compress files                      | `gzip file.txt`                     |
| `gunzip`   | Decompress .gz file                 | `gunzip file.txt.gz`                |
| `zip`      | Compress, add to .zip archive       | `zip archive.zip file.txt`          |
| `unzip`    | List/test/extract zip archives      | `unzip archive.zip`                 |
| `bzip2`    | Higher compression (than gzip)      | `bzip2 file.txt`                    |
| `xz`       | Compress with LZMA algorithm        | `xz file.txt`                       |

---

## 🗝️ 8. Package Management

| Command      | Description                                | Syntax / Example                  |
|--------------|--------------------------------------------|-----------------------------------|
| `apt-get`    | Debian/Ubuntu: Install/manage packages     | `sudo apt-get install git`        |
| `apt`        | Modern tool for APT systems                | `sudo apt update`                 |
| `yum`        | Fedora/RedHat: Package management          | `sudo yum install git`            |
| `dnf`        | Modern Fedora package manager              | `sudo dnf update`                 |
| `zypper`     | OpenSUSE package management                | `sudo zypper install git`         |
| `snap`       | Install/manage snap packages               | `sudo snap install htop`          |
| `rpm`        | Manage rpm packages                        | `sudo rpm -i package.rpm`         |
| `dpkg`       | Manage deb packages                        | `sudo dpkg -i package.deb`        |
| `pip`        | Python package manager                     | `pip install requests`            |

---

## ⚙️ 9. System Boot & Shutdown

| Command       | Description                             | Syntax / Example                |
|---------------|-----------------------------------------|---------------------------------|
| `reboot`      | Reboot the system                       | `sudo reboot`                   |
| `shutdown`    | Shutdown/poweroff                       | `sudo shutdown now`             |
| `halt`        | Stop all CPUs (system halt)             | `sudo halt`                     |
| `init`        | Change runlevel/initiate shutdown        | `sudo init 0`                   |
| `systemctl`   | Manage systemd services & boot          | `systemctl restart sshd`        |

---

## 🧰 10. Miscellaneous Utilities

| Command    | Description                         | Syntax / Example                      |
|------------|-------------------------------------|---------------------------------------|
| `echo`     | Print message to terminal           | `echo "Hello, world!"`                |
| `alias`    | Make or view command aliases        | `alias ll='ls -l'`                    |
| `unalias`  | Remove command alias                | `unalias ll`                          |
| `clear`    | Clear terminal screen               | `clear`                               |
| `time`     | Measure running time of commands    | `time ls`                             |
| `sleep`    | Pause for specified seconds         | `sleep 5`                             |
| `watch`    | Periodically run command            | `watch -n 2 df -h`                    |
| `export`   | Set environment variable            | `export PATH=$PATH:/opt/bin`          |

---

## 🎓 Linux Command Syntax Basics

**General form:**  
- **command:** Name of the utility (e.g., `ls`)
- **options:** Modify the behavior, often with `-` or `--` (e.g., `ls -l`)
- **arguments:** Targets or values to operate on (e.g., `ls /home`)

**Standard for help:**
- `command -h` or `command --help` shows usage and options.
- `man command` displays the manual entry for deeper info[7][4].

---

## 📚 Reference

- [Linux Handbook: A to Z Linux Commands][1]
- [GeeksforGeeks: Linux Commands][2]
- [Tecmint: Linux Commands Sheet][3]
- [DigitalOcean: Linux Commands Guide][4]
- [Thomas-Krenn: Command Syntax][7]
- [Hostinger: 60 Essential Linux Commands][6]

---
> Bookmark or contribute to this list for your next Linux pro
> ject!
>
: https://linuxhandbook.com/a-to-z-linux-commands/
: https://www.geeksforgeeks.org/linux-unix/linux-commands/
: https://www.tecmint.com/linux-commands-cheat-sheet/
: https://www.digitalocean.com/community/tutorials/linux-commands
: https://www.hostinger.com/in/tutorials/linux-commands
: https://www.thomas-krenn.com/en/wiki/Linux_Commands





# 🐧 Linux Commands A to Z – Grouped by Category

> A categorized reference of Linux commands with syntax and usage.

---

## 📁 1. File & Directory Management

| Command | Description |
|--------|-------------|
| `ls` | List files in a directory |
| `cd` | Change directory |
| `pwd` | Show current path |
| `mkdir` | Make new directory |
| `rm` | Remove file or directory |
| `touch` | Create empty file |
| `cp` | Copy files/directories |
| `mv` | Move or rename files/directories |
| `find` | Search for files |
| `stat` | Display file metadata |

---

## 🌐 2. Networking

| Command | Description |
|--------|-------------|
| `ping` | Test network connection |
| `ifconfig` / `ip a` | Show IP and network interfaces |
| `traceroute` | Show packet path to a host |
| `netstat -tulpn` | Show listening ports |
| `ss -tuln` | Replacement for netstat |
| `curl` | Transfer data from URLs |
| `wget` | Download from web |
| `nslookup` | DNS lookup |
| `dig` | Detailed DNS queries |
| `scp` | Secure file transfer |
| `ssh` | Connect to remote machine securely |

---

## ⚙️ 3. System Monitoring

| Command | Description |
|--------|-------------|
| `top` / `htop` | Show running processes |
| `ps aux` | List all processes |
| `uptime` | Show system uptime |
| `vmstat` | Virtual memory stats |
| `iostat` | CPU and disk usage |
| `free -h` | Show RAM usage |
| `df -h` | Show disk usage |
| `du -sh` | Show directory size |
| `dmesg` | Show boot logs |

---

## 🧰 4. Package Management

### Ubuntu/Debian

| Command | Description |
|--------|-------------|
| `apt update` | Refresh package lists |
| `apt upgrade` | Upgrade installed packages |
| `apt install <pkg>` | Install a package |
| `apt remove <pkg>` | Remove a package |

### RHEL/CentOS/Fedora

| Command | Description |
|--------|-------------|
| `dnf install <pkg>` | Install a package |
| `dnf remove <pkg>` | Remove a package |
| `dnf update` | Update packages |
| `yum` | Older package manager (still works) |

---

## 🧑‍💻 5. User & Permission Management

| Command | Description |
|--------|-------------|
| `adduser` / `useradd` | Add new user |
| `passwd` | Change password |
| `usermod` | Modify user |
| `id` | Show user/group IDs |
| `chown` | Change file owner |
| `chmod` | Change file permission |
| `groups` | Show group membership |
| `sudo` | Run command as root |

---

## 📦 6. Archiving & Compression

| Command | Description |
|--------|-------------|
| `tar -cvf` | Create archive |
| `tar -xvf` | Extract archive |
| `zip` | Compress files |
| `unzip` | Extract zip file |
| `gzip` | Compress files |
| `gunzip` | Decompress gzip files |

---

## 🧪 7. DevOps & Containers

| Command | Description |
|--------|-------------|
| `docker ps` | List running containers |
| `docker images` | List images |
| `docker run` | Run a new container |
| `docker build` | Build an image |
| `systemctl` | Manage system services |
| `journalctl` | System logs viewer |
| `crontab -e` | Schedule jobs |
| `kubectl get pods` | K8s pods |
| `terraform apply` | Terraform deploy |
| `ansible-playbook` | Run Ansible playbook |

---

## 🧮 8. Disk & Partition

| Command | Description |
|--------|-------------|
| `lsblk` | List block devices |
| `blkid` | Show UUID of devices |
| `mount` / `umount` | Mount/Unmount disk |
| `fdisk` | Partition management |
| `parted` | Advanced disk partitioning |
| `mkfs.ext4` | Format disk |

---

## 🔐 9. Security & Permissions

| Command | Description |
|--------|-------------|
| `chmod` | Change permissions |
| `chown` | Change ownership |
| `ufw` | Firewall in Ubuntu |
| `firewalld` | RHEL/CentOS firewall |
| `ssh-keygen` | Generate SSH keys |
| `gpg` | Encrypt/decrypt data |

---

## 🛠️ 10. Miscellaneous

| Command | Description |
|--------|-------------|
| `alias` | Shortcut for commands |
| `history` | Show command history |
| `echo` | Print text |
| `date` | Show date/time |
| `whoami` | Current user |
| `uname -a` | System info |
| `reboot` | Restart system |
| `shutdown now` | Power off |

---

📁 Save this as `linux-commands-cheatsheet.md` and keep it handy!


Here's your chmod guide in a GitHub-ready Markdown format with added details, examples, and enhancements. It's structured as a clear, developer-friendly article you can publish in a repo or dev blog.


---

# 🔐 Mastering `chmod` in Linux – File Permission Cheat Sheet

Understanding `chmod` is essential for managing access and security on Linux. This guide walks you through common permission settings with clear examples and use cases.

---

## 📚 Quick Ref: What is `chmod`?

`chmod` stands for **change mode**. It modifies file or directory permissions using symbolic or numeric notation.

**Numeric Format**:  
Each digit represents permission for:
- **Owner**
- **Group**
- **Others**

Permission values:
| Action    | Value |
|-----------|-------|
| Read (r)  | 4     |
| Write (w) | 2     |
| Execute(x)| 1     |

---

## ✅ Common `chmod` Permission Modes

---

### 1. `chmod 755` – Web Server Scripts / Public Executables

```bash
chmod 755 script.sh

Breakdown:

Owner: 7 → rwx

Group: 5 → r-x

Others: 5 → r-x


Use Case:
For shell scripts, web server files, or programs that need to be executable by everyone, but only modifiable by the owner.

ls -l script.sh
# -rwxr-xr-x


---

2. chmod 644 – Text / Config Files

chmod 644 notes.txt

Breakdown:

Owner: 6 → rw-

Group: 4 → r--

Others: 4 → r--


Use Case:
For read-only files shared with others. Common for configuration files.

ls -l notes.txt
# -rw-r--r--


---

3. chmod 600 – Private / Sensitive Files

chmod 600 secrets.txt

Breakdown:

Owner: 6 → rw-

Group: 0 → ---

Others: 0 → ---


Use Case:
Store passwords, tokens, or SSH private keys. Only owner has access.

ls -l secrets.txt
# -rw-------


---

4. chmod 700 – Private Scripts or SSH Keys

chmod 700 backup.sh
chmod 700 ~/.ssh

Breakdown:

Owner: 7 → rwx

Group: 0 → ---

Others: 0 → ---


Use Case:
Restrict execution to the owner only. Used for private scripts or .ssh/ directory.

ls -l backup.sh
# -rwx------


---

5. chmod 777 – Temporary Full Access

chmod 777 /tmp/myfolder

Breakdown:

Owner: 7 → rwx

Group: 7 → rwx

Others: 7 → rwx


Use Case:
Allows unrestricted read/write/execute access. Useful for temporary folders but not recommended for production.

ls -ld /tmp/myfolder
# drwxrwxrwx

⚠️ Warning: Major security risk. Use only in controlled environments.


---

6. chmod 2755 – Set GID (Group Inheritance)

chmod 2755 shared-dir/

Breakdown:

2 prefix sets the SetGID bit

Permissions: rwxr-xr-x


Use Case: All new files inside this directory inherit the group of the directory.

ls -ld shared-dir/
# drwxr-sr-x


---

7. chmod 4755 – Set UID (Run as File Owner)

chmod 4755 /usr/local/bin/my-sudo

Breakdown:

4 prefix sets SetUID

Permissions: rwxr-xr-x


Use Case:
Allows executable to run with the file owner's permissions. Used in programs like sudo.

ls -l /usr/local/bin/my-sudo
# -rwsr-xr-x


---

8. chmod 000 – Lock File Access

chmod 000 locked.txt

Breakdown:

No permissions for anyone


Use Case: Completely restrict file access. Requires chmod to reverse.

ls -l locked.txt
# ----------


---

9. chmod +x – Add Execute Permission

chmod +x script.sh

Use Case:
Quickly make a script or binary executable. Doesn’t affect read/write.


---

10. chmod -R 755 folder/ – Recursive Permission

chmod -R 755 /var/www/html/

Use Case:
Apply permissions to all files/subdirs in a directory. Useful for setting web app access.


---

📊 Summary Table

Command	Use Case	Permission Breakdown

chmod 755	Public executable script	rwx r-x r-x
chmod 644	Text/config files	rw- r-- r--
chmod 600	Private files (passwords/keys)	rw- --- ---
chmod 700	Owner-only scripts	rwx --- ---
chmod 777	Temp folder (risky)	rwx rwx rwx
chmod 2755	Shared group dir (SetGID)	rwxr-sr-x
chmod 4755	Run as file owner (SetUID)	rwsr-xr-x
chmod 000	Lock access completely	--- --- ---
chmod +x	Make a file executable	Add x to existing perms
chmod -R 755	Recursively apply permissions	Entire tree as 755



---

🔒 Pro Tips

Always use chmod with caution — wrong permissions can lead to security holes or broken apps.

Combine chmod with chown to set proper ownership:

sudo chown user:group filename

Use umask to set default file permissions for new files.



---

📁 Bonus: Symbolic Notation Reference

chmod u+x file   # Add execute to user
chmod g-w file   # Remove write from group
chmod o=r file   # Set others to read only


---

🧠 Final Thought

Understanding Linux file permissions is critical for security, automation, and debugging. Master chmod, and you’ll never get stuck on a “Permission denied” again!


---

> 🔗 Feel free to fork, clone, or share this.
Contributions welcome at: [your-repo-link]



---
