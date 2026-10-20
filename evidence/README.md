# Genuine evidence collection

The PDF asks for final checks but does **not** explicitly require screenshots as a submission. These folders support the requested GitHub workflow. Capture only your own Kali output; no screenshots or outputs are prefilled.

| Suggested file | When | Proves |
|---|---|---|
| `screenshots/01-student01-whoami.png` | After Step 1 | Correct account |
| `screenshots/02-project-and-hidden-file.png` | Step 2 | Directory layout and `.secret.txt` via `ls -la` |
| `screenshots/03-report-and-script.png` | Step 3 | Edited report and `install.sh` contents |
| `screenshots/04-permissions.png` | Step 4 **before cleanup** | `chmod` outcomes, including `admin_notes.txt` 600 |
| `screenshots/05-backup-and-final-tree.png` | Final checks | Backup and final structure |
| `terminal-output/tree-project.txt` | Final checks | Actual `tree project` output |
| `terminal-output/permissions.txt` | Final checks | Actual `ls -la` output |

To save output, run in Kali: `tree project > /path/to/your/evidence-copy/tree-project.txt` and `ls -la project project/docs project/scripts project/bin project/backup project/backup/docs project/backup/scripts > /path/to/your/evidence-copy/permissions.txt` (replace the destination with a real writable folder), then transfer these files to the matching repository folders. Do not claim screenshots are mandatory under the PDF. Review any command history/screenshots for credentials before uploading.
