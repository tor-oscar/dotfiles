include ../makefile-vars.mk

GIT_URL=https://github.com/Lokaltog/powerline.git
GIT_PATH=$(CURDIR)/powerline-git
PATH_VAR=PATH=$$PATH:$(GIT_PATH)/scripts/

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
	test -f $(PATHS_FILE) && grep -q '$(PATH_VAR)' $(PATHS_FILE) || echo '$(PATH_VAR)' >> $(PATHS_FILE)

uninstall:
	echo "TODO: uninstalling..."

include ../makefile-utils.mk
