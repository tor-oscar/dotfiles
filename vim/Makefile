include ../makefile-vars.mk
GIT_URL=git.mufasa:vim
GIT_PATH=$(CURDIR)/vim-git

.PHONY: install uninstall

install: $(HOME)/.vim
	echo "installing vim into $(HOME)/.vim"
	$(MAKE) HOME=$(HOME) -C $(HOME)/.vim

uninstall: 
	test -h $(HOME)/.vim -a $(GIT_PATH) = `readlink $(HOME)/.vim` && $(RM) $(HOME)/.vim

$(HOME)/.vim: $(BACKUP_DIR)/.vim clone
	ln -s $(GIT_PATH) $@

clean:
	$(RM) -r $(GIT_PATH)

include ../makefile-utils.mk
