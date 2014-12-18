GIT_URL=https://github.com/sigurdga/gnome-terminal-colors-solarized.git
GIT_PATH=$(CURDIR)/gnome-terminal-solarized-git
GNOME_TERMINAL_PROFILE=Default

.PHONY: install uninstall

install:
	$(RM) -r $(GIT_PATH) && git clone $(GIT_URL) $(GIT_PATH)
	$(GIT_PATH)/install.sh --scheme dark --profile $(GNOME_TERMINAL_PROFILE)

uninstall:
	echo "To uninstall gnome terminal solarized theme:"
	echo "Gnome <=3.6: rm -r ~/.gconf/apps/gnome-terminal/profiles/Solarized/"
	echo "Gnome >=3.8: dconf reset -f /org/gnome/terminal/legacy/profiles:/PROFILE_ID"
