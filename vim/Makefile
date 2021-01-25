plugin_names = powerline
git_plugin_names = tagbar autotag nerdtree nerdcommenter \
				   tabular solarized handlebars javascript \
					 elixir csharp typescript rust rust_racer \
					 wintabs wintabs_powerline

tabline_url = https://github.com/DrunkenInfant/vim-tabline.git
tagbar_url = https://github.com/majutsushi/tagbar.git
autotag_url = https://github.com/vim-scripts/AutoTag.git
solarized_url = https://github.com/DrunkenInfant/vim-colors-solarized.git
nerdtree_url = https://github.com/scrooloose/nerdtree.git
nerdcommenter_url = https://github.com/scrooloose/nerdcommenter.git
tabular_url = https://github.com/godlygeek/tabular.git
handlebars_url = https://github.com/mustache/vim-mustache-handlebars.git
javascript_url = https://github.com/jelera/vim-javascript-syntax.git
elixir_url = https://github.com/elixir-lang/vim-elixir.git
csharp_url = git://github.com/OrangeT/vim-csharp.git
typescript_url = https://github.com/leafgarland/typescript-vim.git
rust_url = https://github.com/rust-lang/rust.vim.git
rust_racer_url = https://github.com/racer-rust/vim-racer.git
wintabs_url = https://github.com/zefei/vim-wintabs
wintabs_powerline_url = https://github.com/zefei/vim-wintabs-powerline

.PHONY: install uninstall $(HOME)/.vimrc $(HOME)/.vim

install: plugins $(HOME)/.vim $(HOME)/.vimrc

plugins: $(patsubst %, bundle/%-git, $(git_plugin_names)) $(plugin_names)

powerline:
	$(RM) -r bundle/powerline && ln -sf ~/.local/lib/python3.8/site-packages/powerline/bindings/vim/ bundle/powerline

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
