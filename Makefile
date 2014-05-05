include makefile-vars.mk
DOTFILES=vim gnome-terminal dircolors powerline

.PHONY: all install testinit

all:

install: $(patsubst %,%-install,$(DOTFILES))

%-install: 
	$(MAKE) -C $* install

%-clean:
	$(MAKE) -C $* clean

testinit:
	mkdir -p test_home/.config/fontconfig/conf.d
	mkdir -p test_home/.fonts
