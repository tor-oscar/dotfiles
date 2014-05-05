include ../makefile-vars.mk

.PHONY: clone

clone:
	git clone $(GIT_URL) $(GIT_PATH) || { echo "Updating $(GIT_PATH)" ; cd $(GIT_PATH) && git pull; }

$(BACKUP_DIR)/%: |$(BACKUP_DIR)
	-mv $(HOME)/$* $@

$(BACKUP_DIR):
	mkdir -p $@
