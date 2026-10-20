#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
missing=0
for p in README.md .gitignore 'Linux Task 02.pdf' docs/README.md docs/task-overview.md docs/gitbash-push.md workflow/README.md workflow/workflow.md commands/README.md commands/commands.sh scripts/README.md evidence/README.md evidence/screenshots/.gitkeep evidence/terminal-output/.gitkeep submission/README.md submission/command-history.txt submission/final-output.txt; do
  if [[ -e "$p" ]]; then printf 'OK %s\n' "$p"; else printf 'MISSING %s\n' "$p"; missing=1; fi
done
if [[ "$missing" -ne 0 ]]; then echo 'Repository template incomplete'; exit 1; fi
echo 'Repository template complete. Actual Kali execution and evidence remain user tasks.'
