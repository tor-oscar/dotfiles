include ../makefile-vars.mk

GIT_URL=https://github.com/Lokaltog/powerline.git
GIT_PATH=$(CURDIR)/powerline-git

.PHONY: install uninstall

install: $(HOME)/.powerline
	
$(HOME)/.powerline: $(BACKUP_DIR)/.powerline clone
	ln -s $(GIT_PATH) $@

include ../makefile-utils.mk
