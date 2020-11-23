.PHONY: clean all

all:
	stow --target=$(HOME) -R $(shell ls -d */)
	@echo "Created all symlinks in ${HOME}!"

clean:
	stow --target=$(HOME) -D $(shell ls -d */)
	@echo "Deleted all symlinks in ${HOME}!"

