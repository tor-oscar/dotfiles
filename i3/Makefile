LINK_PATH=$(HOME)/.i3
CONF_PATH=$(CURDIR)

.PHONY: install uninstall

install:
	$(RM) -r $(LINK_PATH) && ln -sf $(CONF_PATH) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(CONF_PATH) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :
