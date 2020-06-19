#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://249701722381.ngrok.io/project/5eec7c94b68f3c811c34a5ad/webhook/build/pull > /dev/null
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://249701722381.ngrok.io/pull/5eec7c94b68f3c811c34a5ad
curl -s -X POST https://249701722381.ngrok.io/project/5eec7c94b68f3c811c34a5ad/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://249701722381.ngrok.io/project/5eec7c94b68f3c811c34a5ad/webhook/build/publish > /dev/null
