include ../makefile-vars.mk

GIT_URL=https://github.com/Lokaltog/powerline.git
GIT_PATH=$(CURDIR)/powerline-git

.PHONY: install uninstall

install: $(HOME)/.powerline $(HOME)/.config/powerline
	
$(HOME)/.powerline: $(BACKUP_DIR)/.powerline clone
	test -h $@ || ln -s $(GIT_PATH) $@

$(HOME)/.config/powerline: $(BACKUP_DIR)/.config/powerline
	mkdir -p $@
	cp -R $(GIT_PATH)/powerline/config_files/* $@
	cp -R config/* $@
	cp $(GIT_PATH)/font/PowerlineSymbols.otf $(HOME)/.fonts/
	cp $(GIT_PATH)/font/10-powerline-symbols.conf $(HOME)/.config/fontconfig/conf.d/
	fc-cache -vf $(HOME)/.fonts

uninstall:
	echo "TODO: uninstalling..."

include ../makefile-utils.mk
