include makefile-vars.mk
DOTFILES=zsh powerline tmux vim gnome-terminal dircolors git input

.PHONY: all install check_dependencies testinit

all:

install: check_dependencies $(patsubst %,%-install,$(DOTFILES))

uninstall: $(patsubst %,%-uninstall,$(DOTFILES))

%-install: 
	$(MAKE) -C $* install

%-uninstall:
	$(MAKE) -C $* uninstall

check_dependencies:
	echo "Checking for dependencies"

testinit:
	mkdir -p test_home/.config/fontconfig/conf.d
	mkdir -p test_home/.fonts
