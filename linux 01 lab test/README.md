# Linux User Management, File Operations, Permissions & Ownership

A GitHub-ready workflow for the Linux practical activity documented in the referenced LinkedIn screen-recording/post.

## Objective

Practice practical Linux administration and security fundamentals through:

- user identity and account verification
- switching to the required user account
- directory/workspace creation
- file creation
- directory/file listing
- output redirection
- copying and deleting files
- Linux file permissions
- recovery after deletion
- file ownership

The workflow is designed as a **lab guide and evidence framework**, not as fabricated evidence of completion.

## Activity Requirements Represented

The referenced activity documents the following operations:

1. Check the current user with `whoami`.
2. Verify `agent007` with `id`.
3. Switch to `agent007` with `su - agent007`.
4. Create `mission/intel` and `mission/ops/backup`.
5. Create `targets.txt`, `routes.txt`, and `keys.txt` inside `intel`.
6. Practice `ls`, `ls -l`, and `ls -la`.
7. Redirect listing outputs into separate files.
8. Copy `routes.txt` into the backup directory.
9. Remove `keys.txt`.
10. Apply `chmod 640` to `targets.txt`.
11. Delete the backup copy of `routes.txt`.
12. Restore the backup copy from the original.
13. Change `targets.txt` ownership to `root:root` using `sudo chown`.
14. Capture evidence of the practical process.

The exact filenames used for the three redirected listing outputs are **not exposed by the accessible text of the referenced LinkedIn page**, so this repository marks those names as placeholders rather than inventing them.

## Technologies / Tools

- Linux shell
- `whoami`
- `id`
- `su`
- `mkdir`
- `touch`
- `ls`
- shell output redirection (`>`)
- `cp`
- `rm`
- `chmod`
- `chown`
- `sudo`

## Prerequisites

- A Linux environment where you are authorized to perform the lab.
- The `agent007` account must exist before attempting `id agent007` or `su - agent007`.
- Permission to use `sudo` for the ownership step.
- A terminal/shell.
- Ability to capture screenshots or terminal evidence.

## Repository Structure

```text
linux-user-management-github-workflow/
├── README.md
├── .gitignore
├── docs/
│   ├── README.md
│   └── task-overview.md
├── workflow/
│   ├── README.md
│   └── workflow.md
├── commands/
│   ├── README.md
│   └── commands.sh
├── scripts/
│   ├── README.md
│   └── verify.sh
├── evidence/
│   ├── README.md
│   ├── screenshots/
│   │   └── .gitkeep
│   └── terminal-output/
│       └── .gitkeep
└── submission/
    ├── README.md
    ├── command-history.txt
    └── final-output.txt
```

## Important Safety / Learning Notes

- Run the commands only in a Linux environment you control or are explicitly authorized to use.
- `su - agent007` may request the account password and is intentionally manual.
- `sudo chown root:root targets.txt` changes ownership and may require administrative privileges.
- Do not paste passwords, secrets, tokens, or unrelated personal information into the repository.
- Do not fabricate screenshots, command output, permissions, ownership, or final results.

## First Step

Open `workflow/workflow.md` and perform the activity one phase at a time. Capture evidence at the points identified in `evidence/README.md`.

## Final Verification

Before submission, complete the checklist in `submission/README.md` and ensure that your evidence contains your **real** terminal results.
