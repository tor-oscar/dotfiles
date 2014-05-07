include makefile-vars.mk
DOTFILES=vim gnome-terminal dircolors powerline

.PHONY: all install check_dependencies testinit

all:

install: check_dependencies $(patsubst %,%-install,$(DOTFILES))

%-install: 
	$(MAKE) -C $* install

%-clean:
	$(MAKE) -C $* clean

check_dependencies:
	echo "Checking for dependencies"

testinit:
	mkdir -p test_home/.config/fontconfig/conf.d
	mkdir -p test_home/.fonts
