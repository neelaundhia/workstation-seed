#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Add Beekeeper Studio Repository
if [[ ! -f /etc/yum.repos.d/beekeeper-studio.repo ]]; then
    rpm --import https://rpm.beekeeperstudio.io/beekeeper.key
    cp "${SCRIPT_DIR}/beekeeper-studio.repo" /etc/yum.repos.d/beekeeper-studio.repo
fi

# Install or Update Beekeeper Studio
dnf check-update && sudo dnf install -y beekeeper-studio
