# 🛠 Master List of Terminal Tools, Extensions, Plugins & Distros

This is a curated list of tools for **terminal productivity**, **dotfiles setups**, **DevOps workflows**, and **Linux-based environments**.  
Grouped by category, sorted alphabetically, and ready to explore.

---

## 📦 Terminals

| Name       | Description | Usage | Purpose |
|------------|-------------|-------|---------|
| Alacritty  | GPU-accelerated terminal emulator | `alacritty` | Lightweight, fast, and cross-platform |
| GNOME Terminal | Default GNOME desktop terminal | `gnome-terminal` | Simple, integrated with GNOME |
| iTerm2     | macOS terminal with advanced features | macOS only | Power-user terminal for macOS |
| Kitty      | GPU-based terminal with tabs, images, ligatures | `kitty` | Modern terminal with great config and performance |
| Konsole    | KDE terminal emulator | `konsole` | KDE's default terminal |
| Terminator | Terminal with multiple resizable panes | `terminator` | Tile-based terminal management |
| Tilix      | Tiling terminal emulator | `tilix` | Persistent layouts, split panes |
| WezTerm    | GPU-accelerated, cross-platform terminal | `wezterm` | Highly configurable and fast |
| XTerm      | Old-school X11 terminal | `xterm` | Minimal, always works |

---

## 🖌 Terminal Customization & Prompts

| Name        | Description | Usage | Purpose |
|-------------|-------------|-------|---------|
| Catppuccin  | Theme suite for terminals, editors, apps | Apply via config files | Consistent and aesthetic theme |
| Dracula     | Dark color theme for terminals & apps | Apply via config files | Eye-friendly dark theme |
| Oh My Posh  | Prompt theme engine for any shell | `oh-my-posh` | Customize shell prompts |
| Oh My Zsh   | Zsh configuration framework | Install with curl/wget | Extend Zsh with themes & plugins |
| Powerlevel10k | Zsh theme with instant prompt | Zsh theme config | Fast, feature-rich shell prompt |
| Starship    | Minimal, fast shell prompt | `starship` | Cross-shell customizable prompt |

---

## ⚡ Shells

| Name   | Description | Usage | Purpose |
|--------|-------------|-------|---------|
| Bash   | GNU Bourne Again Shell | Default in most distros | Stable, widely available |
| Fish   | Friendly Interactive Shell | `fish` | User-friendly, auto-suggestions |
| Zsh    | Z shell with advanced features | `zsh` | Highly customizable, plugin support |

---

## 🗂 Terminal Multiplexers

| Name    | Description | Usage | Purpose |
|---------|-------------|-------|---------|
| Byobu   | Text-based window manager using tmux/screen | `byobu` | Easy multiplexing with status |
| GNU Screen | Terminal multiplexer | `screen` | Older multiplexer, stable |
| Tmux    | Terminal multiplexer with panes, sessions | `tmux` | Persistent, organized terminal workspaces |
| Zellij  | Modern multiplexer with layout config | `zellij` | Easy to use, scriptable layouts |

---

## 🔍 Fuzzy Finders & Navigation

| Name       | Description | Usage | Purpose |
|------------|-------------|-------|---------|
| Bat        | `cat` with syntax highlighting | `bat file.txt` | Readable file previews |
| Exa        | `ls` replacement with icons/colors | `exa -l` | Modern directory listing |
| Fd         | `find` replacement | `fd pattern` | Fast file searching |
| Fzf        | Fuzzy finder | `fzf` | Interactive search/filter |
| Lsd        | Another `ls` replacement | `lsd` | Icons and colors |
| Ripgrep (rg) | Grep alternative | `rg pattern` | Fast text searching |
| Zoxide     | Smarter `cd` command | `z <dir>` | Quick directory jumping |

---

## 🖥 System Monitoring & Process Management

| Name    | Description | Usage | Purpose |
|---------|-------------|-------|---------|
| Bpytop  | Terminal resource monitor | `bpytop` | CPU/mem/network visualization |
| Glances | Cross-platform monitoring | `glances` | Overview of system metrics |
| Htop    | Interactive process viewer | `htop` | Manage processes easily |
| Iotop   | Disk I/O monitor | `iotop` | Monitor disk activity |
| Nmon    | Performance monitor | `nmon` | Detailed performance stats |
| Ncdu    | Disk usage analyzer | `ncdu` | Explore disk usage |
| Powertop| Power consumption monitor | `powertop` | Optimize battery usage |

---

## 🌐 Networking & Web

| Name        | Description | Usage | Purpose |
|-------------|-------------|-------|---------|
| Curl        | Data transfer via URL | `curl https://example.com` | Fetch APIs, files |
| HTTPie      | Command-line HTTP client | `http GET example.com` | Human-friendly API testing |
| MTR         | Network diagnostic tool | `mtr google.com` | Ping + traceroute in one |
| Nmap        | Network scanning tool | `nmap -sV target` | Discover devices/services |
| Telnet      | Basic TCP connection tool | `telnet host port` | Debug network services |
| Wget        | Download files via HTTP/FTP | `wget url` | File and site download |

---

## 🛠 DevOps / CI-CD Tools

| Name         | Description | Usage | Purpose |
|--------------|-------------|-------|---------|
| Ansible      | Automation and configuration management | `ansible-playbook` | Infrastructure as Code |
| ArgoCD       | GitOps continuous delivery | Web/UI + CLI | Kubernetes CD |
| Docker       | Container platform | `docker run` | Build & run containers |
| Helm         | Kubernetes package manager | `helm install` | Manage k8s apps |
| Jenkins      | CI/CD automation server | `jenkins` | Automate builds/deployments |
| K9s          | Kubernetes CLI dashboard | `k9s` | Interact with Kubernetes clusters |
| Minikube     | Local Kubernetes | `minikube start` | Test k8s locally |
| Terraform    | Infrastructure as Code | `terraform apply` | Provision infra declaratively |

---

## 📦 Package Managers

| Name         | Description | Usage | Purpose |
|--------------|-------------|-------|---------|
| Apt          | Debian/Ubuntu package manager | `apt install pkg` | Manage system packages |
| Brew         | macOS/Linux package manager | `brew install pkg` | Install CLI tools easily |
| Dnf          | Fedora package manager | `dnf install pkg` | Manage RPM packages |
| Pacman       | Arch Linux package manager | `pacman -S pkg` | Fast package management |
| Snap         | Universal package format | `snap install pkg` | Sandbox app packaging |
| Yum          | Older RHEL package manager | `yum install pkg` | RPM management |

---

## 📚 Text Editors

| Name    | Description | Usage | Purpose |
|---------|-------------|-------|---------|
| Emacs   | Extensible text editor | `emacs` | Powerful, customizable editor |
| Micro   | Terminal-based text editor | `micro` | Easy, modern CLI editor |
| Nano    | Simple text editor | `nano file.txt` | Beginner-friendly |
| Neovim  | Modern Vim fork | `nvim` | Extensible, Lua-powered editor |
| Vim     | Modal text editor | `vim file.txt` | Efficient keyboard editing |

---

## 🖥 Linux Distros

| Name         | Description | Usage | Purpose |
|--------------|-------------|-------|---------|
| Arch Linux   | Rolling release, customizable | Install from ISO | DIY Linux distro |
| Debian       | Stable, server-friendly | Install from ISO | Reliable and well-supported |
| Fedora       | Cutting-edge, GNOME default | Install from ISO | Latest packages, developer focus |
| Kali Linux   | Security & pentesting | Install from ISO | Ethical hacking toolkit |
| Pop!_OS      | Ubuntu-based dev distro | Install from ISO | Dev & creative workflows |
| Ubuntu       | Popular Linux desktop/server | Install from ISO | Beginner-friendly, widely supported |

---

## ⚙ Other Utilities

| Name     | Description | Usage | Purpose |
|----------|-------------|-------|---------|
| Git      | Version control system | `git clone repo` | Code collaboration |
| Lazygit  | TUI for Git | `lazygit` | Easy Git UI |
| Make     | Build automation tool | `make` | Automate tasks |
| Tldr     | Simplified man pages | `tldr cmd` | Quick command help |
| Tree     | Display directory structure | `tree` | Visualize folders |

---
