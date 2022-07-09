
Debian
====================
This directory contains files used to package coincoind/coincoin-qt
for Debian-based Linux systems. If you compile coincoind/coincoin-qt yourself, there are some useful files here.

## coincoin: URI support ##


coincoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install coincoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your coincoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/logo128.png` to `/usr/share/pixmaps`

coincoin-qt.protocol (KDE)
