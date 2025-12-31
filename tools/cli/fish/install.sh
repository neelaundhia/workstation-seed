#!/bin/bash
set -euo pipefail

# Install or Update fish shell
echo "Installing fish shell..."
dnf check-update && sudo dnf install -y fish
