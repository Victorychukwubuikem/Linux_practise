# Linux Task 02 — Linux Command Line Practical Task

A GitHub-ready **workflow/template** for the uploaded Kali Linux assignment. No lab execution, screenshots, or terminal output is claimed. Work in Kali as `student01` after account creation; use **Git Bash only to publish the extracted repository**.

## Objective and requirements
Demonstrate basic Linux commands as a newly created user in Kali Linux. Create `student01`, set password, optionally add sudo, switch with `su` or `login`, verify `whoami`; create `~/project/{docs,scripts,bin}`; create and edit `report.txt`, create/move the secret file, write `install.sh`; configure permissions; delete `admin_notes.txt`, create `backup` and copy the **contents** of `docs` and `scripts`; verify with `tree project` and `ls -la`. Optional: export `history` to `~/commands_used.txt`.

## Prerequisites
Kali Linux terminal; an existing account authorized to create users and set passwords; `nano`, `cp`, `mv`, `chmod`, `ls`, `echo`, `tree` (install `tree` using `sudo apt install tree` if absent); Git Bash and a GitHub account for publishing. Never commit passwords or sensitive content.

## Start
1. Read [workflow/workflow.md](workflow/workflow.md) and perform each step in **Kali**, using [commands/commands.sh](commands/commands.sh) as an interactive reference, **not** an all-at-once executable script.
2. Capture genuine evidence as described in [evidence/README.md](evidence/README.md). Complete [submission/README.md](submission/README.md); actual outputs are intentionally placeholders.
3. Run `bash scripts/verify-repository.sh` from the extracted repository to check template structure (it does not validate the Kali system).
4. Follow [docs/gitbash-push.md](docs/gitbash-push.md) to push from Git Bash.

## Expected final Kali workspace
```text
/home/student01/project/
├── backup/
│   ├── docs/
│   │   └── report.txt
│   └── scripts/
│       ├── install.sh
│       └── report.txt
├── bin/
│   └── classified.txt
├── docs/
│   └── report.txt
└── scripts/
    ├── install.sh
    └── report.txt
```
The source `admin_notes.txt` has been deleted. `classified.txt` is the moved and renamed `.secret.txt`. Actual `tree` formatting may differ. `install.sh` is executable for all; `classified.txt` has no read permission for others. The former `admin_notes.txt` had owner-only read/write (600) before deletion.

## Repository contents
- `Linux Task 02.pdf` — original assignment
- `docs/` — task overview and Git Bash publishing guide
- `workflow/` — phase-by-phase instructions, verification and evidence prompts
- `commands/` — commented, interactive command reference
- `scripts/` — repository template checker (does not perform the lab)
- `evidence/screenshots/`, `evidence/terminal-output/` — empty evidence folders
- `submission/` — guidance and placeholders for genuine results

## Troubleshooting and safety
Use `pwd` and `whoami` before file operations. If `tree` is unavailable, install it as directed in the PDF (requires sudo). If `sudo` is needed for `student01`, add that user to the sudo group from an authorized account and log in again. Do not run user-creation commands blindly if the account already exists. Do not publish the contents of `.secret.txt`/`classified.txt` or other private data inadvertently; this task specifies mock text `Top Secret`.

## Final verification checklist
- [ ] `student01` created, password set, logged in and `whoami` checked
- [ ] `project/docs`, `project/scripts`, `project/bin` created
- [ ] `report.txt` created with first line, edited in nano to add second line
- [ ] `ls -la` used; `.secret.txt` created with specified text
- [ ] `report.txt` copied to `scripts`; secret moved/renamed to `bin/classified.txt`
- [ ] `install.sh` has the exact two-line content and is executable by all
- [ ] Others' read permission removed from `classified.txt`
- [ ] `admin_notes.txt` created, set to 600, then deleted
- [ ] `backup` contains copies of the contents of `docs` and `scripts`
- [ ] Final `tree project` and relevant `ls -la` checks performed
- [ ] Genuine evidence captured; optional history exported if chosen
- [ ] No fabricated results included in GitHub repository
