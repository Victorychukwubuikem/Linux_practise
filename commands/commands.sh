#!/usr/bin/env bash
# INTERACTIVE REFERENCE — DO NOT RUN AS ONE SCRIPT.
# Kali Linux only. First block: existing authorized sudo-capable account.
sudo useradd -m -s /bin/bash student01
sudo passwd student01
# If required: sudo usermod -aG sudo student01
su - student01
whoami

# Remaining commands: student01 account.
cd /home/student01
mkdir -p project/docs project/scripts project/bin
cd project/docs
echo "This is the initial report by student01." > report.txt
ls -la
echo "Top Secret" > .secret.txt
ls -la
nano report.txt  # MANUAL: add second line: Appended line using nano.
cat report.txt
cp report.txt ../scripts/
mv .secret.txt ../bin/classified.txt
cd ../scripts
nano install.sh  # MANUAL: enter exactly two lines specified in workflow.
cat install.sh
chmod a+x install.sh
ls -l install.sh
chmod o-r ../bin/classified.txt
ls -l ../bin/classified.txt
cd ../docs
touch admin_notes.txt
chmod 600 admin_notes.txt
ls -l admin_notes.txt
rm admin_notes.txt
cd ..
mkdir backup
cp -r docs scripts backup/
cd /home/student01
# If tree is not installed, use an authorized sudo account: sudo apt install tree
tree project
ls -la project project/docs project/scripts project/bin project/backup project/backup/docs project/backup/scripts
# OPTIONAL BONUS: history > /home/student01/commands_used.txt
