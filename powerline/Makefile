GIT_URL=https://github.com/Lokaltog/powerline.git
GIT_PATH=$(CURDIR)/powerline-git


.PHONY: install uninstall fonts config powerline

install: powerline config fonts
	cd $(GIT_PATH); python setup.py install --user
	
powerline:
	$(RM) -r $(GIT_PATH) && git clone $(GIT_URL) $(GIT_PATH)
	ln -sf $(GIT_PATH) $(HOME)/.powerline

config:
	mkdir -p $(HOME)/.config/powerline
	cp -R $(GIT_PATH)/powerline/config_files/* $(HOME)/.config/powerline

fonts:
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
