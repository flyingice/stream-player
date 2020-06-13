#!/usr/bin/env bash

ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
source "$ROOT/common.sh"

SERVER_NAME=localhost
SERVER_PORT=1554
MEDIA="$ROOT/data/movie.mjpeg"

# start streaming server
echo "Starting server ..."
java -classpath "$TARGET" Server "$SERVER_PORT" &
echo "Server started."

# wait for the sever to fully start before running the client
sleep 5

# start streaming client
echo "Starting client ..."
java -classpath "$TARGET" Client "$SERVER_NAME" "$SERVER_PORT" "$MEDIA" &
echo "Client started."
