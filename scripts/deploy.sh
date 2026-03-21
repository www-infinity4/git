#!/usr/bin/env bash
set -euo pipefail

# Load environment variables from .env if present
if [ -f "$(dirname "$0")/../.env" ]; then
  # shellcheck source=/dev/null
  source "$(dirname "$0")/../.env"
fi

: "${DEPLOY_HOST:?DEPLOY_HOST is not set}"
: "${DEPLOY_USER:?DEPLOY_USER is not set}"
: "${DEPLOY_PATH:?DEPLOY_PATH is not set}"

echo "Deploying to ${DEPLOY_USER}@${DEPLOY_HOST}:${DEPLOY_PATH} ..."

ssh "${DEPLOY_USER}@${DEPLOY_HOST}" "
  cd '${DEPLOY_PATH}' &&
  git fetch origin main &&
  git pull --ff-only origin main &&
  echo 'Deployment complete.'
"
