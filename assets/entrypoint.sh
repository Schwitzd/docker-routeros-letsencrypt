#!/bin/sh
set -a

VERSION=$(cat /app/version.txt)
echo "+++ Welcome to routeros-letsencrypt (v${VERSION}) +++"

# Run it once to initiate
echo "Run it once to initiate..."
/app/run.sh

# Starting cron daemon
echo "+++++++++++++++++++++++++++++++++++++++++++++"
echo "Starting cron daemon..."
crond -f -L /dev/stdout