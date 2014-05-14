include ../makefile-vars.mk
GIT_URL=git.mufasa:vim
GIT_PATH=$(CURDIR)/vim-git

.PHONY: install uninstall

install: $(HOME)/.vim $(HOME)/.vimrc
	$(MAKE) -C $(GIT_PATH)

uninstall: 
	test -h $(HOME)/.vim && $(GIT_PATH) = `readlink $(HOME)/.vim` && $(RM) $(HOME)/.vim || :
	test -h $(HOME)/.vimrc && $(GIT_PATH)/vimrc = `readlink $(HOME)/.vimrc` && $(RM) $(HOME)/.vimrc || :

$(HOME)/.vim: $(BACKUP_DIR)/.vim clone
	test ! -d $@ && ln -s $(GIT_PATH) $@ || :

$(HOME)/.vimrc: $(BACKUP_DIR)/.vimrc
	test ! -f $@ && ln -s $(GIT_PATH)/vimrc $@ || :

clean:
	$(RM) -r $(GIT_PATH)

include ../makefile-utils.mk
