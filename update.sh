#!/bin/bash
# Update the content pack from GitHub then re-install

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Updating content pack..."
cd "$SCRIPT_DIR"
git pull origin main

echo
echo "Update complete. Run ./install.sh to apply changes to your Flipper Zero."
