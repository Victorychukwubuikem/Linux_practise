# Push the project with Windows Git Bash

The Kali commands in this repository **must be performed in Kali Linux**, not Windows Git Bash. After doing the lab, copy genuine evidence into this extracted repository.

1. Extract `linux-task-02-github-ready.zip` to e.g. `C:\Users\YOURNAME\Documents\linux-task-02-github-ready`.
2. Create a new **empty** GitHub repository in your browser (do not initialize with a README). Copy its HTTPS URL.
3. In Git Bash (replace placeholders):

```bash
cd "/c/Users/YOURNAME/Documents/linux-task-02-github-ready"
git init
git branch -M main
git config user.name "YOUR NAME"
git config user.email "YOUR EMAIL"
git status
git add .
git commit -m "Add Linux Task 02 workflow and evidence"
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
git push -u origin main
```

Use the GitHub sign-in/credential flow when prompted; do not commit tokens or passwords. If `origin` exists, inspect `git remote -v` before updating it. For later changes: `git add . && git commit -m "Update lab evidence" && git push`. Verify the files on GitHub.
