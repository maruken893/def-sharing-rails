#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for rails
rm -rf /myapp/tmp/pids/server.pid

# Then exec the container's main process (that's set as CMD in the Dockerfile).
exec "$@"