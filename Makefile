# File: Makefile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Tue 02 Feb 2021 10:41:41 AM CET
# License:
# Copyright (c) 2020 Chris Fröschl.

install: 
	stow --target=$(HOME) -R $(shell ls -d */)
	@echo "Created all symlinks in ${HOME}!"

uninstall:
	stow --target=$(HOME) -D $(shell ls -d */)
	@echo "Deleted all symlinks in ${HOME}!"

.PHONY: install uninstall
