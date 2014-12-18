plugin_names = powerline
git_plugin_names = tagbar autotag nerdtree nerdcommenter \
				   tabular solarized handlebars tabline

tabline_url = https://github.com/DrunkenInfant/vim-tabline.git
tagbar_url = https://github.com/majutsushi/tagbar.git
autotag_url = https://github.com/vim-scripts/AutoTag.git
solarized_url = https://github.com/altercation/vim-colors-solarized.git
nerdtree_url = https://github.com/scrooloose/nerdtree.git
nerdcommenter_url = https://github.com/scrooloose/nerdcommenter.git
tabular_url = https://github.com/godlygeek/tabular.git
handlebars_url = https://github.com/mustache/vim-mustache-handlebars.git

.PHONY: install uninstall $(HOME)/.vimrc $(HOME)/.vim

install: plugins $(HOME)/.vim $(HOME)/.vimrc

plugins: $(patsubst %, bundle/%-git, $(git_plugin_names)) $(plugin_names)

powerline:
	$(RM) -r bundle/powerline && ln -sf ~/.powerline/powerline/bindings/vim/ bundle/powerline

bundle/%-git:
	$(RM) -r $@ && git clone $($*_url) $@

$(HOME)/.vim:
	$(RM) -r $@ && ln -sf $(CURDIR) $@

$(HOME)/.vimrc: vimrc
	$(RM) -r $@ && ln -sf $(CURDIR)/vimrc $@

uninstall:
	test -h $(HOME)/.vim && $(CURDIR) = `readlink $(HOME)/.vim` && $(RM) $(HOME)/.vim || :
	test -h $(HOME)/.vimrc && $(CURDIR)/vimrc = `readlink $(HOME)/.vimrc` && $(RM) $(HOME)/.vimrc || :

clean-plugins: $(patsubst %, clean-bundle/%-git, $(git_plugin_names)) $(patsubst %, clean-%, $(plugin_names))

clean-bundle/%-git:
	rm -rf bundle/$*-git

clean-powerline: clean-bundle/powerline-git
	rm -rf bundle/powerline
