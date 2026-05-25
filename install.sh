#!/bin/bash
# Flipper Zero Content Pack Installer
# Usage: ./install.sh [/path/to/flipper/sd]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FLIPPER_SD="${1:-}"

green() { printf "\033[0;32m%s\033[0m\n" "$1"; }
red()   { printf "\033[0;31m%s\033[0m\n" "$1"; }
yellow(){ printf "\033[0;33m%s\033[0m\n" "$1"; }

green "╔══════════════════════════════════════════╗"
green "║  Flipper Zero Content Pack Installer     ║"
green "╚══════════════════════════════════════════╝"
echo

# Auto-detect Flipper SD card
if [ -z "$FLIPPER_SD" ]; then
    for candidate in \
        "/media/$USER/Flipper SD" \
        "/media/$USER/flipper" \
        "/Volumes/Flipper SD" \
        "/Volumes/flipper" \
        "/run/media/$USER/Flipper SD"; do
        if [ -d "$candidate" ]; then
            FLIPPER_SD="$candidate"
            yellow "Auto-detected SD card: $FLIPPER_SD"
            break
        fi
    done
fi

if [ -z "$FLIPPER_SD" ] || [ ! -d "$FLIPPER_SD" ]; then
    red "Error: Flipper SD card not found."
    yellow "Usage: ./install.sh /path/to/flipper/sd"
    yellow "Example: ./install.sh \"/media/user/Flipper SD\""
    exit 1
fi

green "Installing to: $FLIPPER_SD"
echo

# Create directories on SD card
for dir in infrared subghz badusb nfc rfid; do
    mkdir -p "$FLIPPER_SD/$dir"
done

# Copy each section
for section in infrared subghz badusb nfc rfid; do
    if [ -d "$SCRIPT_DIR/$section" ]; then
        green "  Installing $section..."
        cp -r "$SCRIPT_DIR/$section/." "$FLIPPER_SD/$section/"
    fi
done

echo
green "Installation complete!"
yellow "Restart your Flipper Zero to see new files."
