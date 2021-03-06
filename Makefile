# File: Makefile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Sat 06 Mar 2021 09:06:47 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.

LINKER = stow
TARGET = --target=$(HOME)
PACKAGES = $(shell ls -d */)

install: 
	$(LINKER) $(TARGET) -R $(PACKAGES)
	@echo "Created all symlinks in ${HOME}!"

clean:
	$(LINKER) $(TARGET) -D $(PACKAGES)
	@echo "Deleted all symlinks in ${HOME}!"

.PHONY: install clean
