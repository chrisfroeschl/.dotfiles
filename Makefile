# File: Makefile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sun 13 Dec 2020 09:39:54 AM CET
# License:
# Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
# See :help license

.PHONY: clean all

all:
	stow --target=$(HOME) -R $(shell ls -d */)
	@echo "Created all symlinks in ${HOME}!"

clean:
	stow --target=$(HOME) -D $(shell ls -d */)
	@echo "Deleted all symlinks in ${HOME}!"

