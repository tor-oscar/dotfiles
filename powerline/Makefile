include ../makefile-vars.mk

GIT_URL=https://github.com/Lokaltog/powerline.git
GIT_PATH=$(CURDIR)/powerline-git

.PHONY: install uninstall

install: $(HOME)/.powerline $(HOME)/.config/powerline
	cd $(GIT_PATH); python setup.py install --user
	
$(HOME)/.powerline: $(BACKUP_DIR)/.powerline clone
	test -h $@ || ln -s $(GIT_PATH) $@

$(HOME)/.config/powerline: $(BACKUP_DIR)/.config/powerline
	mkdir -p $@
	cp -R $(GIT_PATH)/powerline/config_files/* $@
	cp -R config/* $@
	mkdir -p $(HOME)/.fonts/
	cp $(GIT_PATH)/font/PowerlineSymbols.otf $(HOME)/.fonts/
	mkdir -p $(HOME)/.config/fontconfig/conf.d/
	cp $(GIT_PATH)/font/10-powerline-symbols.conf $(HOME)/.config/fontconfig/conf.d/
	fc-cache -vf $(HOME)/.fonts

uninstall:
	$(RM) -r $(HOME)/.config/powerline
	$(RM) $(HOME)/.fonts/PowerlineSymbols.otf
	$(RM) $(HOME)/.config/fontconfig/conf.d/10-powerline-symbols.conf
	test -h $(HOME)/.powerline && test $(GIT_PATH) = `readlink $(HOME)/.powerline` && $(RM) $(HOME)/.powerline || :

include ../makefile-utils.mk
