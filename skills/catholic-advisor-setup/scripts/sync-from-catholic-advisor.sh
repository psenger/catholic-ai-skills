#!/usr/bin/env bash
# Sync the references/ tree from catholic-advisor into catholic-advisor-setup.
# Run from the repo root, or from inside catholic-advisor-setup/.

set -euo pipefail

# Resolve the two skill directories regardless of cwd.
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
setup_dir="$(dirname "$script_dir")"
skills_root="$(dirname "$setup_dir")"
advisor_dir="$skills_root/catholic-advisor"

if [[ ! -d "$advisor_dir/references" ]]; then
  echo "error: $advisor_dir/references not found" >&2
  exit 1
fi

# Replace the setup skill's references/ with a fresh copy from catholic-advisor.
rm -rf "$setup_dir/references"
cp -R "$advisor_dir/references" "$setup_dir/references"

count="$(find "$setup_dir/references" -type f -name '*.md' | wc -l | tr -d ' ')"
echo "Synced $count reference files from $advisor_dir/references -> $setup_dir/references"