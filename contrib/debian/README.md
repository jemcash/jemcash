
Debian
====================
This directory contains files used to package jemcashd/jemcash-qt
for Debian-based Linux systems. If you compile jemcashd/jemcash-qt yourself, there are some useful files here.

## jemcash: URI support ##


jemcash-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install jemcash-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your jemcash-qt binary to `/usr/bin`
and the `../../share/pixmaps/jemcash128.png` to `/usr/share/pixmaps`

jemcash-qt.protocol (KDE)

