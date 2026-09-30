#!/usr/bin/env bash
# Non-destructive verification helper.
# It does not modify the lab.

set -u

LAB_ROOT="${1:-$PWD}"

echo "Verification root: $LAB_ROOT"
echo

check_path() {
    local path="$1"
    if [[ -e "$path" ]]; then
        printf '[OK]   %s\n' "$path"
    else
        printf '[MISS] %s\n' "$path"
    fi
}

check_path "$LAB_ROOT/mission"
check_path "$LAB_ROOT/mission/intel"
check_path "$LAB_ROOT/mission/ops"
check_path "$LAB_ROOT/mission/ops/backup"
check_path "$LAB_ROOT/mission/intel/targets.txt"
check_path "$LAB_ROOT/mission/intel/routes.txt"

if [[ -e "$LAB_ROOT/mission/intel/keys.txt" ]]; then
    echo "[NOTE] keys.txt still exists; the deletion step may not have been completed."
else
    echo "[OK]   keys.txt is absent."
fi

if [[ -e "$LAB_ROOT/mission/ops/backup/routes.txt" ]]; then
    echo "[OK]   backup/routes.txt is present."
else
    echo "[NOTE] backup/routes.txt is absent; complete/verify the recovery step."
fi

if [[ -e "$LAB_ROOT/mission/intel/targets.txt" ]]; then
    echo
    echo "targets.txt metadata:"
    stat -c 'permissions=%A (%a) owner=%U group=%G path=%n' \
        "$LAB_ROOT/mission/intel/targets.txt" 2>/dev/null || \
        ls -l "$LAB_ROOT/mission/intel/targets.txt"
fi
