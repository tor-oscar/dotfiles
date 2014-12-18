GIT_URL=https://github.com/seebi/dircolors-solarized.git
GIT_PATH=$(CURDIR)/dircolors-solarized-git
LINK_PATH=$(HOME)/.dircolorsrc
DIRCOL_FILE=$(GIT_PATH)/dircolors.256dark

.PHONY: install uninstall

install:
	$(RM) -r $(GIT_PATH) && git clone $(GIT_URL) $(GIT_PATH)
	$(RM) $(LINK_PATH) && ln -sf $(DIRCOL_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(DIRCOL_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :
