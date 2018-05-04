MODMAP_LINK=$(HOME)/.Xmodmap
MODMAP_PATH=$(CURDIR)/Xmodmap

.PHONY: install uninstall

install:
	$(RM) $(MODMAP_LINK) && ln -sf $(MODMAP_PATH) $(MODMAP_LINK)

uninstall:
	test -h $(MODMAP_LINK) && test $(MODMAP_PATH) = `readlink $(MODMAP_LINK)` && $(RM) $(MODMAP_LINK) || :
