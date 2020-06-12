#!/usr/bin/env bash

ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
source "$ROOT/common.sh"

echo "Cleaning ..."
rm -rf "$TARGET" 2>/dev/null
rm "$JAVAFILES" 2>/dev/null
rm "$JAVAOPTIONS" 2>/dev/null
mkdir -p "$TARGET" || exit 1
echo "Cleanup finished."
