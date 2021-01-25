SYSD_UNIT_PATH=$(shell systemd-analyze --user unit-paths | head -n 1)

.PHONY: install

install:
	mkdir -p ~/.config
	ln -sf $(CURDIR)/config_files ~/.config/powerline
	mkdir -p $(SYSD_UNIT_PATH)
	ln -sf $(CURDIR)/powerline.service $(SYSD_UNIT_PATH)/
