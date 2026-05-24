# Kitty Setup on Ubuntu

## Install

```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin version=0.33.0
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/bin/kitty
```

## Set as default terminal

```bash
# GNOME default (per-user)
gsettings set org.gnome.desktop.default-applications.terminal exec 'kitty'
gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''
```

For the keyboard shortcut, create a **custom shortcut** in Settings > Keyboard > Shortcuts > Custom Shortcuts, pointing to `kitty`. The built-in System > Terminal shortcut doesn't work reliably with a custom terminal.

## Icon / taskbar

Run `./install-icons.sh` from this folder. It:

- Symlinks `kitty.desktop` (from this dotfiles folder) to `~/.local/share/applications/kitty.desktop`
- Symlinks kitty's bundled icons to `~/.local/share/icons/hicolor/`
- Refreshes the desktop database

The custom `kitty.desktop` in this folder adds `StartupWMClass=kitty`, which is required for GNOME to group all kitty windows under one taskbar icon. The bundled desktop file at `~/.local/kitty.app/share/applications/kitty.desktop` is missing this field and should not be used.
