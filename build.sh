#!/usr/bin/env bash

ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
source "$ROOT/common.sh"

# cleanup
sh "$ROOT/clean.sh"

# prepare manifest
echo "Generating manifest ..."
find "$SOURCE" -type f -name '*.java' > "$JAVAFILES"
echo "-d $TARGET" > "$JAVAOPTIONS"

# build
echo "Building ..."
javac @"$JAVAOPTIONS" @"$JAVAFILES"
echo "Build finished."
