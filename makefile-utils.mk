include ../makefile-vars.mk

.PHONY: clone

clone:
	git clone $(GIT_URL) $(GIT_PATH) || { echo "Updating $(GIT_PATH)" ; cd $(GIT_PATH) && git pull; }

# TODO never overwrite existing backup
# Try to check whether the file should be backed up or not
$(BACKUP_DIR)/%: |$(BACKUP_DIR)
	mkdir -p $(dir $@)
	-mv $(HOME)/$* $@

$(BACKUP_DIR):
	mkdir -p $@

$(BIN_DIR):
	mkdir -p $@
