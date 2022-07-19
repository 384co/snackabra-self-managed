#!/bin/sh
# This script checks if the container is started for the first time

ls -la
miniflare src/room.mjs --watch --debug --modules --port 4001 --wrangler-config wrangler.toml
