include ../makefile-vars.mk
GIT_URL=https://github.com/seebi/dircolors-solarized.git
GIT_PATH=$(CURDIR)/dircolors-solarized-git
RC_LINE=. $(CURDIR)/dircolorsrc.sh

.PHONY: install uninstall

install: clone
	test -f $(SHELLRC_FILE) && grep -q '$(RC_LINE)' $(SHELLRC_FILE) || echo '$(RC_LINE)' >> $(SHELLRC_FILE)

uninstall:
	echo "TODO: uninstalling..."

include ../makefile-utils.mk
