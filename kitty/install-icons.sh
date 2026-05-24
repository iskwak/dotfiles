#!/usr/bin/env bash
set -e

mkdir -p ~/.local/share/icons/hicolor/scalable/apps ~/.local/share/icons/hicolor/256x256/apps

ln -sf ~/.local/kitty.app/share/icons/hicolor/scalable/apps/kitty.svg ~/.local/share/icons/hicolor/scalable/apps/kitty.svg
ln -sf ~/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png ~/.local/share/icons/hicolor/256x256/apps/kitty.png
ln -sf ~/checkouts/dotfiles/kitty/kitty.desktop ~/.local/share/applications/kitty.desktop

gtk-update-icon-cache ~/.local/share/icons/hicolor/
update-desktop-database ~/.local/share/applications/
