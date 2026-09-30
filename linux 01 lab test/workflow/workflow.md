# Complete Practical Workflow

## Phase 1 — Environment Preparation

### 1. Open a terminal

**Do:** Start your authorized Linux environment.

**Run:**
```bash
pwd
```

**Expected result:** Your current working directory is displayed.

**Evidence:** Capture the terminal only if your instructor requires environment evidence.

**Note:** `pwd` is a supporting navigation command, not a documented core requirement.

---

## Phase 2 — User / Account Verification

### 2. Check the current user

**Run as:** current user

```bash
whoami
```

**Purpose:** Displays the username associated with the current shell.

**Verify:** Confirm the displayed username.

**Evidence:** Capture the command and output if user verification is required.

### 3. Verify `agent007`

**Run as:** current user with permission to query the account

```bash
id agent007
```

**Purpose:** Displays UID, GID, and group information for `agent007`.

**Expected result:** Account identity information for `agent007`.

**Evidence filename suggestion:** `01-user-verification.png`

### 4. Switch to `agent007`

**Run as:** current user

```bash
su - agent007
```

**Manual interaction:** A password may be requested.

**Expected result:** The shell changes to the `agent007` login environment.

**Verify:**
```bash
whoami
```

**Expected verification:** `agent007`

**Evidence filename suggestion:** `02-agent007-session.png`

---

## Phase 3 — Directory Structure

### 5. Create the required workspace

**Run as:** `agent007`

```bash
mkdir -p mission/intel mission/ops/backup
```

**Purpose:** Creates the required nested directory structure.

**Verify:**
```bash
ls -la mission
ls -la mission/intel
ls -la mission/ops
ls -la mission/ops/backup
```

**Evidence filename suggestion:** `03-workspace-created.png`

---

## Phase 4 — File Creation

### 6. Enter the intelligence directory

```bash
cd mission/intel
```

### 7. Create the required files

```bash
touch targets.txt routes.txt keys.txt
```

**Expected result:** Three empty files exist.

**Verify:**
```bash
ls -l
```

**Evidence filename suggestion:** `04-required-files-created.png`

---

## Phase 5 — Linux File Listings and Output Redirection

### 8. Run `ls`

```bash
ls
```

**Purpose:** Shows the directory entries.

**Evidence:** Capture the command and its real output.

### 9. Run `ls -l`

```bash
ls -l
```

**Purpose:** Shows a detailed listing including permissions, ownership, size, and timestamps.

**Evidence:** Capture the command and its real output.

### 10. Run `ls -la`

```bash
ls -la
```

**Purpose:** Includes hidden entries in the detailed listing.

**Evidence:** Capture the command and its real output.

### 11. Redirect the three listing outputs

The referenced activity states that the three listing outputs were redirected into separate files. The accessible source text does **not** expose the exact filenames used.

Use the exact filenames from the original assignment/video:

```bash
ls > [LS_OUTPUT_FILE_1]
ls -l > [LS_OUTPUT_FILE_2]
ls -la > [LS_OUTPUT_FILE_3]
```

**Do not replace the placeholders with invented filenames if the original task specifies different names.**

**Verify:**
```bash
ls -l
```

Then inspect each output file with:
```bash
cat [LS_OUTPUT_FILE_1]
cat [LS_OUTPUT_FILE_2]
cat [LS_OUTPUT_FILE_3]
```

**Evidence filename suggestion:** `05-listings-and-redirection.png`

---

## Phase 6 — Copying and Deleting Files

### 12. Copy `routes.txt` to the backup directory

From `mission/intel`:

```bash
cp routes.txt ../ops/backup/
```

**Verify:**
```bash
ls -l ../ops/backup/
```

**Expected result:** `routes.txt` is present in the backup directory.

**Evidence filename suggestion:** `06-routes-backup.png`

### 13. Remove `keys.txt`

```bash
rm keys.txt
```

**Verify:**
```bash
ls -l
```

**Expected result:** `keys.txt` is no longer listed.

**Evidence filename suggestion:** `07-keys-removed.png`

---

## Phase 7 — Permissions

### 14. Set the required permission on `targets.txt`

```bash
chmod 640 targets.txt
```

**Purpose:** Sets owner permissions to read/write, group permissions to read, and no permissions for others.

**Verify:**
```bash
ls -l targets.txt
```

**Expected permission pattern:** `-rw-r-----` (subject to file-type/metadata presentation).

**Evidence filename suggestion:** `08-targets-permissions.png`

---

## Phase 8 — Recovery Practice

### 15. Delete the backup copy of `routes.txt`

```bash
rm ../ops/backup/routes.txt
```

**Verify:**
```bash
ls -l ../ops/backup/
```

**Expected result:** The backup copy is absent.

### 16. Restore the backup copy from the original

```bash
cp routes.txt ../ops/backup/
```

**Verify:**
```bash
ls -l ../ops/backup/
```

**Expected result:** `routes.txt` is present again.

**Evidence filename suggestion:** `09-recovery-restored.png`

**Learning point:** This demonstrates recovery from an intact original after a backup copy has been deleted.

---

## Phase 9 — Ownership

### 17. Change `targets.txt` ownership

**Run as:** a user with authorized `sudo` access

```bash
sudo chown root:root targets.txt
```

**Purpose:** Changes the owner and group of `targets.txt` to `root`.

**Verify:**
```bash
ls -l targets.txt
```

**Expected result:** Ownership fields show `root root` when the command succeeds.

**Evidence filename suggestion:** `10-targets-root-ownership.png`

**Security note:** Only perform this in your authorized lab environment.

---

## Phase 10 — Final Verification

Run the relevant checks:

```bash
whoami
ls -la mission
ls -la mission/intel
ls -la mission/ops
ls -la mission/ops/backup
ls -l mission/intel/targets.txt
```

Confirm that:

- the required workspace exists
- the required files were created
- `keys.txt` was removed
- `routes.txt` exists in the backup directory after recovery
- `targets.txt` has the required `640` permission
- `targets.txt` ownership was changed to `root:root` if the ownership step was completed

Do not mark a requirement complete until you have observed the real result.

---

## Phase 11 — Evidence Collection

Place real screenshots in:

```text
evidence/screenshots/
```

Place text captures or copied terminal output in:

```text
evidence/terminal-output/
```

Use the evidence checklist in `evidence/README.md`.

---

## Phase 12 — Final Submission

Complete:

```text
submission/command-history.txt
submission/final-output.txt
submission/README.md
```

Only record results that you actually produced.
