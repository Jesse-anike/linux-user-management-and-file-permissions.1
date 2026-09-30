# Task Overview

## Source Basis

The activity is based on the referenced LinkedIn post/screen-recording. The accessible post text describes a Linux practical covering user management, directory/file operations, permissions, recovery, and ownership.

## Required Practical Operations

| Area | Operation |
|---|---|
| User management | `whoami`, `id agent007`, `su - agent007` |
| Directories | `mkdir -p mission/intel mission/ops/backup` |
| File creation | `touch targets.txt routes.txt keys.txt` |
| Listing | `ls`, `ls -l`, `ls -la` |
| Output redirection | Redirect each listing result into a separate file |
| Copying | Copy `routes.txt` to `mission/ops/backup` |
| Deletion | Remove `keys.txt`; delete the backup copy of `routes.txt` |
| Permissions | `chmod 640 targets.txt` |
| Recovery | Restore the deleted backup copy from the original |
| Ownership | `sudo chown root:root targets.txt` |
| Evidence | Document the actual terminal process and results |

## Information Not Invented

The accessible page text does not specify the exact names of the three files receiving the redirected `ls` outputs. The workflow therefore uses `[LS_OUTPUT_FILE]` placeholders for that portion until the exact names are confirmed from the original assignment/video.
