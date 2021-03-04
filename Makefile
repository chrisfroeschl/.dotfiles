# File: Makefile
# Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
# Last Modified: Thu 04 Mar 2021 07:59:01 PM CET
# License:
# Copyright (c) 2020 Chris Fröschl.

LINKER = stow
TARGET = --target=$(HOME)
PACKAGES = $(shell ls -d */)

install: 
	$(LINKER) $(TARGET) -R $(PACKAGES)
	@echo "Created all symlinks in ${HOME}!"

clean:
	$(LINKER) $(TARGET) -R $(PACKAGES)
	@echo "Deleted all symlinks in ${HOME}!"

.PHONY: install clean
