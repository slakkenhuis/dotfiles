#!/bin/bash
# Make /tmp a tmpfs
set -euo pipefail
IFS=$'\n\t'

if ! grep -q '^tmpfs\s\+/tmp\s' /etc/fstab; then
    echo "tmpfs /tmp tmpfs rw,nosuid,nodev,noatime,mode=1777 0 0" | sudo tee -a /etc/fstab
fi
