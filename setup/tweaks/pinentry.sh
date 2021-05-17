#!/bin/bash
# Change pinentry from terminal to GTK. For password prompt.
set -euo pipefail

sudo apt install pinentry-gtk2
sudo update-alternatives --set pinentry /usr/bin/pinentry-gtk-2
