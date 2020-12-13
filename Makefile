# File: Makefile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sun 13 Dec 2020 02:31:19 PM CET
# License:
# Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
# See :help license

all:
	stow --target=$(HOME) -R $(shell ls -d */)
	@echo "Created all symlinks in ${HOME}!"

clean:
	stow --target=$(HOME) -D $(shell ls -d */)
	@echo "Deleted all symlinks in ${HOME}!"

.PHONY: clean all
