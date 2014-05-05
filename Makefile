include makefile-vars.mk
DOTFILES=vim
list1=a b c d
list2=1 2 3 4

.PHONY: all install testinit

all:

join:
	echo "$(join $(list1), $(list2))"

install: $(patsubst %,%-install,$(DOTFILES))

%-install: 
	$(MAKE) -C $* install

%-clean:
	$(MAKE) -C $* clean

testinit:
	mkdir -p test_home/.config
