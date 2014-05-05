include ../makefile-vars.mk
GIT_URL=https://github.com/sigurdga/gnome-terminal-colors-solarized.git
GIT_PATH=$(CURDIR)/gnome-terminal-solarized-git
GNOME_TERMINAL_PROFILE=Default

.PHONY: install

install: clone
	$(GIT_PATH)/install.sh --scheme dark --profile $(GNOME_TERMINAL_PROFILE)

include ../makefile-utils.mk
