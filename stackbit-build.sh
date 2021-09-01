#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 612f76d2d70f45a45f26803e

echo "stackbit-build.sh: finished build"
