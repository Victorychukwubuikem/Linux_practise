# Step-by-step Kali Linux workflow

**Run in Kali Linux, not Windows Git Bash.** Capture your own output at the indicated points. Record actual commands if completing the optional bonus.

## Phase 1 — Account setup
**Actor:** existing authorized sudo-capable account.
```bash
sudo useradd -m -s /bin/bash student01
sudo passwd student01
# Only if sudo group membership is required in your environment:
sudo usermod -aG sudo student01
su - student01
whoami
```
Expected: `whoami` displays `student01`. Verify `id` if you added sudo membership. `passwd` is interactive: do not write the password into files. If `student01` already exists, inspect before attempting creation. Evidence suggestion: screenshot of `whoami` (and `id` if relevant).

## Phase 2 — Directory and initial files
**Actor:** `student01`.
```bash
cd /home/student01
mkdir -p project/docs project/scripts project/bin
cd project/docs
echo "This is the initial report by student01." > report.txt
ls -la
echo "Top Secret" > .secret.txt
ls -la
```
Expected: `docs`, `scripts`, `bin`; `report.txt` and hidden `.secret.txt` in `docs`. Verify with `pwd`, `cat report.txt`, `ls -la`. Evidence: directory listing showing hidden file and initial report. `ls -la` includes hidden files and displays permissions/ownership.

## Phase 3 — Edit, copy, move, create script
**Actor:** `student01`.
```bash
nano report.txt
```
**Manual interaction:** add the exact second line `Appended line using nano.` on a new line; save (Ctrl+O, Enter), exit (Ctrl+X). Verify `cat report.txt` shows both lines.
```bash
cp report.txt ../scripts/
mv .secret.txt ../bin/classified.txt
cd ../scripts
nano install.sh
```
In nano, type exactly:
```bash
#!/bin/bash
echo "Installing project dependencies..."
```
Save and exit. Verify with `cat install.sh`, `cat report.txt`, `ls -la ../bin ../docs ../scripts`. Evidence: the two report lines, moved file path and script contents. `cp` preserves the source; `mv` relocates/renames the hidden file.

## Phase 4 — Permissions
**Actor:** `student01`.
```bash
chmod a+x install.sh
ls -l install.sh
chmod o-r ../bin/classified.txt
ls -l ../bin/classified.txt
cd ../docs
touch admin_notes.txt
chmod 600 admin_notes.txt
ls -l admin_notes.txt
```
Expected: all user classes have execute permission on `install.sh`; `classified.txt` has no others-read bit; `admin_notes.txt` shows `-rw-------` (mode 600). The task does not specify exact full numeric mode for the first two files, so use symbolic changes that preserve unrelated bits. Evidence: permission listings **before deleting** `admin_notes.txt`.

## Phase 5 — Cleanup and backup
**Actor:** `student01`.
```bash
rm admin_notes.txt
cd ..
mkdir backup
cp -r docs scripts backup/
```
Expected: `admin_notes.txt` removed from `docs`; `backup/docs` and `backup/scripts` contain copies of their source contents. Verify `ls -la docs backup/docs backup/scripts`. Evidence: listing after cleanup and backup. The task says copy the entire content of `docs` and `scripts` into `backup`; copying both directories recursively preserves their names and contents.

## Phase 6 — Final checks
**Actor:** `student01`.
```bash
cd /home/student01
# Only if tree is missing, and student01 has sudo rights:
# sudo apt install tree
tree project
ls -la project project/docs project/scripts project/bin project/backup project/backup/docs project/backup/scripts
```
Expected: correct file placement, copies in `backup`, no `admin_notes.txt` in `docs`; check permissions with `ls -la`. If `tree` is unavailable, install it per the PDF from an authorized sudo-capable account. Evidence: save your genuine tree output and permission listings under `evidence/terminal-output/`, optionally screenshots.

## Phase 7 — Optional bonus
**Actor:** `student01`, in their shell.
```bash
history
history > /home/student01/commands_used.txt
```
Expected: command history in the home directory. Shell history behavior depends on shell/session; inspect `cat ~/commands_used.txt` and remove any secrets before publishing. The PDF labels this step **optional**.
