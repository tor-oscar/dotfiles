" Plugins
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
"         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

lua require("config.lazy")

" Disable backup files
set nobackup
set nowb
set noswapfile

" INDENTATION
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

filetype plugin indent on
syntax on

lua require('lsp')
" lua require('nvim_comment').setup()

" ---- UI ----
set ruler                  " show cursor pos in low right corner
set number                 " show line numbers
set showcmd                " show incomplete comands in low right corner
set title                  " show title in console title bar.
set showtabline=2
set nocursorline          " Do not highlight current line
set colorcolumn=81
set laststatus=2          " Always show the statusline
" search
set incsearch
set hlsearch

" ------ BEHAVIOUR ----
set switchbuf=useopen,uselast       " Open buffer from quickfix by first
                                    " looking for an already open buffer and
                                    " then opening a new buffer in the last
                                    " window.
set autoread                        " Reload file if changed from other source
set splitright                      " Split window to the right of current
set splitbelow                      " Split window below the current
" autocompletion
set wildmenu							          " Enable tab-completion menu.
set wildmode=longest,list,full			" Full completion.
set wildignorecase						      " Ignore case in tab-completion
"
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" ------ NERDTree
let g:NERDTreeWinSize=50

" search
nnoremap <silent>* :let @/='\<'.expand('<cword>').'\>'<bar>set hlsearch<CR>

" NERDTree mappings
noremap <leader>ft :NERDTreeToggle<CR>
noremap <leader>ff :NERDTreeFind<CR>

" wintabs mappings
map <C-H> <Plug>(wintabs_previous)
map <C-L> <Plug>(wintabs_next)
map <leader>fc <Plug>(wintabs_close)
map <leader>fu <Plug>(wintabs_undo)
map <leader>fo <Plug>(wintabs_only)

" FZF mapping
noremap <leader>fs :FZF<CR>
