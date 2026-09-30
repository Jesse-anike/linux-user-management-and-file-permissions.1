#!/usr/bin/env bash
# Linux User Management, File Operations, Permissions & Ownership
# Reference command sequence.
#
# IMPORTANT:
# - Run only in an authorized lab environment.
# - `su - agent007` is intentionally manual.
# - `sudo chown` requires authorized administrative access.
# - Replace [LS_OUTPUT_FILE_1/2/3] with the exact filenames specified
#   by the original assignment/video.

set -u

echo "=== User verification ==="
whoami
id agent007

echo
echo "=== MANUAL STEP: switch to agent007 ==="
echo "Run manually:"
echo "su - agent007"

echo
echo "=== Workspace creation ==="
mkdir -p mission/intel mission/ops/backup

echo
echo "=== Required file creation ==="
cd mission/intel
touch targets.txt routes.txt keys.txt
ls -l

echo
echo "=== Listing practice ==="
ls
ls -l
ls -la

echo
echo "=== MANUAL: output redirection ==="
echo "Use the exact filenames from the original task:"
echo 'ls > [LS_OUTPUT_FILE_1]'
echo 'ls -l > [LS_OUTPUT_FILE_2]'
echo 'ls -la > [LS_OUTPUT_FILE_3]'

echo
echo "=== Backup ==="
cp routes.txt ../ops/backup/
ls -l ../ops/backup/

echo
echo "=== Delete keys.txt ==="
rm keys.txt
ls -l

echo
echo "=== Permissions ==="
chmod 640 targets.txt
ls -l targets.txt

echo
echo "=== Recovery ==="
rm ../ops/backup/routes.txt
ls -l ../ops/backup/
cp routes.txt ../ops/backup/
ls -l ../ops/backup/

echo
echo "=== OWNERSHIP: authorized sudo step ==="
echo "Run manually:"
echo "sudo chown root:root targets.txt"
echo "Then verify with:"
echo "ls -l targets.txt"
