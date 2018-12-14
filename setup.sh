#!/bin/bash

set -e

SCRIPT_NAME="$0"
SCRIPT_DIR="$(cd "$(dirname "$SCRIPT_NAME")" && pwd)"

echo "[setup] Installing dependencies...."
apt-get install openjdk-8-jre libgtk2.0-0 libwebkitgtk-1.0-0 lame libc6 libglib2.0-0

FONTS_DIR="$SCRIPT_DIR/fonts"
if [ -d "$FONTS_DIR" ]; then
    echo "[setup] Installing custom fonts...."
    mkdir -p /usr/share/fonts/truetype/xmind
    rsync -av "$FONTS_DIR/" /usr/share/fonts/truetype/xmind/
    fc-cache -f
else
    echo "[setup] WARNING: Custom fonts for XMind are not found."
fi

echo "[setup] Done."
