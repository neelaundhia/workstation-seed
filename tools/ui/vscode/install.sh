#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Add Microsoft VS Code Repository
if [[ ! -f /etc/yum.repos.d/vscode.repo ]]; then
    rpm --import https://packages.microsoft.com/keys/microsoft.asc
    cp "${SCRIPT_DIR}/vscode.repo" /etc/yum.repos.d/vscode.repo
fi

# Install or Update VSCode
dnf check-update && sudo dnf install -y code
