include ../makefile-vars.mk
GIT_URL=https://github.com/sigurdga/gnome-terminal-colors-solarized.git
GIT_PATH=$(CURDIR)/gnome-terminal-solarized-git
GNOME_TERMINAL_PROFILE=Default

.PHONY: install uninstall

install: clone
	$(GIT_PATH)/install.sh --scheme dark --profile $(GNOME_TERMINAL_PROFILE)

uninstall:
	echo "TODO: uninstalling..."

include ../makefile-utils.mk
