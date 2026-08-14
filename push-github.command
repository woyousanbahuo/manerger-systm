#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

export http_proxy="${http_proxy:-http://127.0.0.1:7897}"
export https_proxy="${https_proxy:-http://127.0.0.1:7897}"
export HTTP_PROXY="$http_proxy"
export HTTPS_PROXY="$https_proxy"
export NO_PROXY="${NO_PROXY:-localhost,127.0.0.1}"

echo "Using proxy: $https_proxy"
echo
git status --short --branch
echo
git push origin main
echo
echo "GitHub push finished."
read -n 1 -s -r -p "Press any key to close..."
