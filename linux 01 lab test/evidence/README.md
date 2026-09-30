# Evidence Guide

This directory is for **real evidence produced while performing the lab**.

## Do Not

- create fake screenshots
- paste invented command output
- claim a command succeeded without observing it
- include passwords, tokens, or unrelated private information

## Suggested Evidence Sequence

| Filename | What it should prove |
|---|---|
| `01-user-verification.png` | `whoami` and/or `id agent007` result |
| `02-agent007-session.png` | successful `su - agent007` and verification |
| `03-workspace-created.png` | `mission/intel` and `mission/ops/backup` |
| `04-required-files-created.png` | `targets.txt`, `routes.txt`, `keys.txt` |
| `05-listings-and-redirection.png` | `ls`, `ls -l`, `ls -la` and their actual redirected outputs |
| `06-routes-backup.png` | `routes.txt` copied to backup |
| `07-keys-removed.png` | `keys.txt` removed |
| `08-targets-permissions.png` | `chmod 640 targets.txt` verified |
| `09-recovery-restored.png` | backup deleted and restored |
| `10-targets-root-ownership.png` | `root:root` ownership verified |

## Terminal Output

If your instructor wants text output, save it under:

```text
evidence/terminal-output/
```

Use descriptive names such as:

```text
user-verification.txt
directory-verification.txt
permissions-verification.txt
ownership-verification.txt
```

Only add files containing your actual results.
