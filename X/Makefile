MODMAP_LINK=$(HOME)/.Xmodmap
MODMAP_PATH=$(CURDIR)/Xmodmap
RES_LINK=$(HOME)/.Xresources
RES_PATH=$(CURDIR)/Xresources

.PHONY: install uninstall

install:
	$(RM) $(MODMAP_LINK) && ln -sf $(MODMAP_PATH) $(MODMAP_LINK)
	$(RM) $(RES_LINK) && ln -sf $(RES_PATH) $(RES_LINK)

uninstall:
	test -h $(MODMAP_LINK) && test $(MODMAP_PATH) = `readlink $(MODMAP_LINK)` && $(RM) $(MODMAP_LINK) || :
