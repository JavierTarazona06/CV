#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  ./clean_repo.sh [--path PATH]

Deletes LaTeX build artifacts ending in:
  .aux, .log, .out, .synctex.gz

Options:
  --path PATH  Only clean files under PATH.
  -h, --help   Show this help.
USAGE
}

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target_path="$repo_root"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --path)
      if [[ $# -lt 2 || "$2" == --* ]]; then
        echo "Error: --path requires a PATH argument." >&2
        usage >&2
        exit 1
      fi
      target_path="$2"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Error: unknown argument: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

if [[ "$target_path" != /* ]]; then
  target_path="$repo_root/$target_path"
fi

if [[ ! -e "$target_path" ]]; then
  echo "Error: path does not exist: $target_path" >&2
  exit 1
fi

find "$target_path" -type f \
  \( -name '*.aux' -o -name '*.log' -o -name '*.out' -o -name '*.synctex.gz' \) \
  -print -delete
