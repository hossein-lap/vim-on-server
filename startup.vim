syntax on
set nocompatible
filetype off

"" runtime path
" set runtimepath+='~/.config/vim/modules/'

filetype plugin indent on

" startup
au BufNewFile,BufRead *.h set filetype=c
au BufNewFile,BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=80
	\set expandtab

augroup SpaceFix
	autocmd!
	autocmd FileType markdown,asciidoc :silent retab
	" autocmd FileType markdown,asciidoc :silent %s/\t/    /ge
	" autocmd BufReadPost,BufWritePre * :silent %s/\s\+$//ge
augroup END

" au FileType markdown
" 	\set expandtab
" 	\retab 4

au FileType asciidoc
	\set expandtab
au FileType c
	\set tabstop=8
	\set softtabstop=8
	\set shiftwidth=8
	\set textwidth=80

"" terminal
" au TerminalWinOpen *
" 	\ setlocal signcolumn=yes
" 	\ hi! Normal ctermbg=black
" au WinClosed *
" 	\ hi! Normal ctermbg=NONE

" extra whitespace
au BufRead,BufNewFile *
	\ match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=NONE ctermfg=red cterm=underline
