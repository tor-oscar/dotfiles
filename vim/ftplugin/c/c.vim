" C/C++ file type plugin
" @Author: Oscar Olsson
" @Date: 2011 dec 6

" INDENTATIONS
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab

" TEXT
" Buffer width
set textwidth=80

" Show invisible charaters
"set list
"set listchars=eol:$,tab:>.,trail:^

" MAPPINGS
" Add '}' eclipse-style
inoremap {<CR> {<CR>}<Esc>ko
