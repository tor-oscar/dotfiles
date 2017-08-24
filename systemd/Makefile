SYS_PATH=/etc/systemd/system/i3lock@.service
SERVICE_PATH=$(CURDIR)/i3lock@.service

.PHONY: install uninstall

install:
	sudo sh -c 'cp $(SERVICE_PATH) $(SYS_PATH) && systemctl daemon-reload && systemctl enable i3lock@$(USER).service'

uninstall:
	sudo sh -c 'systemctl disable i3lock@$(USER).service && rm -f $(SYS_PATH) && systemctl daemon-reload'
