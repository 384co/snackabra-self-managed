#!/bin/sh
# This script checks if the container is started for the first time

ls -la
miniflare src/storage.js --watch --debug --modules --port 4000 --wrangler-config wrangler.toml
