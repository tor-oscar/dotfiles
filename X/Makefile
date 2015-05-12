MODMAP_LINK=$(HOME)/.Xmodmap
MODMAP_PATH=$(CURDIR)/Xmodmap

PROFILE_LINK=$(HOME)/.xprofile
PROFILE_PATH=$(CURDIR)/xprofile

.PHONY: install uninstall

install:
	$(RM) $(MODMAP_LINK) && ln -sf $(MODMAP_PATH) $(MODMAP_LINK)
	$(RM) $(PROFILE_LINK) && ln -sf $(PROFILE_PATH) $(PROFILE_LINK)

uninstall:
	test -h $(MODMAP_LINK) && test $(MODMAP_PATH) = `readlink $(MODMAP_LINK)` && $(RM) $(MODMAP_LINK) || :
	test -h $(PROFILE_LINK) && test $(PROFILE_PATH) = `readlink $(PROFILE_LINK)` && $(RM) $(PROFILE_LINK) || :
