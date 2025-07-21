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
