# File: Makefile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sun 13 Dec 2020 03:39:32 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl

all:
	stow --target=$(HOME) -R $(shell ls -d */)
	@echo "Created all symlinks in ${HOME}!"

clean:
	stow --target=$(HOME) -D $(shell ls -d */)
	@echo "Deleted all symlinks in ${HOME}!"

.PHONY: clean all
