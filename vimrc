set nocompatible
filetype off

"" runtime path
	" set runtimepath+='~/.vim/modules/'

" Plugins
	call plug#begin('~/.vim/modules/')
		" fuzzy finder
			Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
			Plug 'junegunn/fzf.vim'
		" Linter
			Plug 'vim-syntastic/syntastic'
		"" Auto completion
			" Plug 'hossein-lap/AutoComplPop'
		" comment
			Plug 'tpope/vim-commentary'
			" Plug 'vim-scripts/BlockComment.vim'
		" colorscheme
			Plug 'hossein-lap/vim-hybrid'
			Plug 'hossein-lap/vim-256noir'
	call plug#end()

filetype plugin indent on

" startup
	au BufNewFile,BufRead *.h set filetype=c
	au BufNewFile,BufRead *.py
		\set tabstop=4
		\set softtabstop=4
		\set shiftwidth=4
		\set textwidth=80
		\set expandtab
	au FileType c
		\set tabstop=8
		\set softtabstop=8
		\set shiftwidth=8
		\set textwidth=80

"" terminal
	" au TerminalWinOpen *
	" 			\ setlocal signcolumn=yes
	" 	\ hi! Normal ctermbg=black
	" au WinClosed *
	" 	\ hi! Normal ctermbg=NONE

" extra whitespace
	au BufRead,BufNewFile *
		\ match BadWhitespace /\s\+$/
	highlight BadWhitespace ctermbg=NONE ctermfg=red cterm=underline

"let python_highlight_all=1
syntax on

" options
	set signcolumn=auto
	set encoding=utf-8
	set nonumber
	set fileformat=unix
	set history=1000
	set undolevels=1000
	set wildignore=*.swp,*.bak,*.pyc
	set novisualbell
	set noerrorbells
	set spelllang=en_us,de
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set splitbelow
	set splitright
	set fillchars+=vert:\¦
	set wildmenu             " popup menu
	set wildmode=full        " popup style
	set foldmethod=syntax    " code folding
	set foldlevel=99
	" set foldenable
	set showcmd              " show enterd key
	set showmode             " diable showing mode in the old way
	set autochdir            " change current dir to file's dir
	set showmatch            " show match brackets, parantesies, etc..
	set autoindent           " enable line indentaion
	set smartindent          " smart indent enable
	set cindent              " more
	set bs=2                 " makes the backspace work functinal
	set scrolloff=4          " start srolling from 5 lines to the end
	set updatetime=20000     " write to swapfile every 30 sec when I'm idle
	set hidden
	set list
	set listchars=tab:›\ 
	set laststatus=0
	set incsearch

" abbreviation
	ab fsf Free Software Foundation
	ab foss Free and Open Source Software
	ab hte the
	ab teh the

" " command-mode abbreviation
" 	cmap W w

" colorscheme
	hi! SignColumn ctermfg=NONE     ctermbg=NONE
	hi! String     ctermfg=yellow   ctermbg=NONE
	hi! Folded     ctermfg=blue     ctermbg=NONE
	hi! SpecialKey ctermfg=darkgray ctermbg=NONE
	hi! VertSplit  ctermfg=white    ctermbg=NONE
	hi! MatchParen ctermfg=white    ctermbg=black    cterm=underline
	hi! Search     ctermbg=NONE
	hi! Visual     ctermfg=black

	hi! PmenuSel    ctermfg=magenta  ctermbg=black    cterm=NONE
	hi! Pmenu       ctermfg=black    ctermbg=magenta  cterm=NONE
	" hi! link Pmenu String
	" hi! link PmenuSel Search

	hi! ErrorMsg              ctermfg=black      ctermbg=darkred    cterm=NONE
	hi! SyntasticError        ctermfg=black      ctermbg=darkred    cterm=NONE
	hi! SyntasticErrorSign    ctermfg=darkred    ctermbg=NONE       cterm=NONE
	hi! SyntasticWarning      ctermfg=black      ctermbg=darkyellow cterm=NONE
	hi! SyntasticWarningSign  ctermfg=darkyellow ctermbg=NONE       cterm=NONE
	hi! SyntasticStyleError   ctermfg=red        ctermbg=NONE       cterm=NONE
	hi! SyntasticStyleWarning ctermfg=blue       ctermbg=NONE       cterm=NONE

	" hi SpellBad ctermfg=NONE ctermbg=red 
	" hi SpellCap ctermfg=NONE ctermbg=blue 
	" highlight! SyntasticErrorSymbol ctermbg=NONE ctermfg=red 
	" highlight! SyntasticErrorLine ctermfg=red ctermbg=NONE 
	" hi! SyntasticWarning ctermfg=yellow   ctermbg=NONE 
	" hi! SyntasticInfo    ctermfg=yellow   ctermbg=NONE 
	" hi! SyntasticHint    ctermfg=yellow ctermbg=NONE 
	" hi! SyntasticWarningLine       ctermfg=NONE ctermbg=NONE 
	" hi! SyntasticErrorLine         ctermfg=NONE ctermbg=NONE 
	" hi! SyntasticErrorSignUnderline      ctermfg=darkred ctermbg=black 
	" hi! SyntasticWarningSignUnderline    ctermfg=darkyellow ctermbg=black 
	" hi! SyntasticErrorUnderline    ctermfg=NONE ctermbg=NONE 
	" hi! SyntasticWarningUnderline  ctermfg=NONE ctermbg=NONE 
	" hi! SyntasticErrorSignTex      ctermfg=NONE ctermbg=NONE 
	" hi! SyntasticWarningSignTex    ctermfg=NONE ctermbg=NONE 
	" hi! SyntasticErrorSignOffset   ctermfg=NONE ctermbg=NONE 
	" hi! SyntasticWarningSignOffset ctermfg=NONE ctermbg=NONE 
	" set signcolumn=number
	" highlight link SyntasticError SpellBad

" linter
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	" set statusline+=%#errormsg#
	" set statusline+=%*
	let g:syntastic_error_symbol = '->'
	let g:syntastic_warning_symbol = '->'
	let g:syntastic_style_error_symbol = '~>'
	let g:syntastic_style_warning_symbol = '~>'
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 0
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
	let g:syntastic_enable_balloons = 1
	" au FileType sh let b:syntastic_checkers = ["checkbashisms"]

" auto complation
	set complete+=i
	set complete+=d
	set complete+=kspell
	set completeopt=menuone,popup,noinsert  " always show popup menu
	" set completeopt+=menuone
	" set completeopt+=noinsert
	let g:mucomplete#completion_delay = 1
	autocmd FileType c,cpp,java 
			\set formatoptions+=ro
	autocmd FileType c,cpp 
			\set omnifunc=ccomplete#Complete

" keybind
	let mapleader=' '  " change the <localleader> Key
	let maplocalleader='\' " change the <leader> Key
	" " to system clipboard
	" 	xnoremap <silent> <leader>y "+Y
	" 	nnoremap <silent> <leader>y "+Y
	" 	nnoremap <silent> <leader>P "+p
	" 	xnoremap <silent> <leader>p "_dP
	" 	nnoremap <silent> <leader>d "_d
	" 	vnoremap <silent> <leader>d "_d
	" buffers
		nnoremap <silent> ]b :bnext<CR>
		nnoremap <silent> [b :bprevious<CR>
	" location-list
		nnoremap <silent> <C-j> :lnext<CR>zz
		nnoremap <silent> <C-k> :lprev<CR>zz
	" quickfix-list
		nnoremap <silent> <C-n> :cnext<CR>zz
		nnoremap <silent> <C-p> :cprev<CR>zz
	" fuzzy finder
		noremap <silent> <leader>pf :Files<CR>
		noremap <silent> <leader>gf :GFiles<CR>
	" spell check
		nmap <leader>ss  :setlocal spell!<CR>
	" write with sudo
		cmap WW w !sudo tee % > /dev/null
	" comment
		" autocmd FileType sh,ruby,python,conf,make,yaml,zsh,csh,toml,rmd 
		" 	\ let b:comment_leader = '#'
		" autocmd FileType c,cpp,java,scala,json,go,rust 
		" 	\ let b:comment_leader = '//'
		" autocmd FileType vim,vifm             let b:comment_leader = '"'
		" autocmd FileType haskell,lua          let b:comment_leader = '--'
		" autocmd FileType tex,plaintex         let b:comment_leader = '%'
		" autocmd FileType nroff                let b:comment_leader = '\"'
		"" noremap <silent> - :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
		"" noremap <silent> + :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


	" autopair
		inoremap "  ""<Left>
		inoremap `  ``<Left>
		inoremap '  ''<Left>
		inoremap (  ()<Left>
		inoremap [  []<Left>
		inoremap {  {}<Left>
		au FileType html,xml inoremap <  <><Left>

		augroup autopair_undo
			au FileType vim,text iu `
			au FileType vim,text iu '
			au FileType vim      iu "
		augroup END

		" vim indentaion
			au FileType vim set foldmethod=indent    " code folding

" execute
	" global
		" makefile
			au FileType * nnoremap <localleader>cc :!make<CR>
			au FileType * nnoremap <localleader>ca :!make all<CR>
			au FileType * nnoremap <localleader>cf :!make force<CR>
			au FileType * nnoremap <localleader>cb :!make build<CR>
		" git
			au FileType * nnoremap <localleader>gs :!git status -s<CR>
			au FileType * nnoremap <localleader>gl :!git log --oneline --stat --graph --all<CR>
			au FileType * nnoremap <localleader>ga :!git add %<CR>
	" c
		autocmd FileType c nnoremap <localleader>fe :!./%:r<CR>
		autocmd FileType c nnoremap <localleader>fw :!gcc -Wall %:r.c -o %:r<CR>
		autocmd FileType c nnoremap <localleader>fq :!gcc -Wall %:r.c && ./%:r<CR>
		" autocmd FileType c nnoremap <localleader>fq :cgetexpr system('gcc -Wall % -o %:r')<CR>
	" cpp
		autocmd FileType cpp nnoremap <localleader>fe :!./%:r<CR>
		autocmd FileType cpp nnoremap <localleader>fw :!g++ -Wall % -o %:r<CR>
		autocmd FileType cpp nnoremap <localleader>fq :!g++ -Wall % -o %:r && ./%:r<CR>
	" lua
		autocmd FileType lua nnoremap <localleader>fe :!./%<CR>
		autocmd FileType lua nnoremap <localleader>fw :!lua5.4 %<CR>
		" autocmd FileType lua nnoremap <localleader>fq :!luac %<CR>
	" python
		autocmd FileType python nnoremap <localleader>fe :!./%<CR>
		autocmd FileType python nnoremap <localleader>fw :!python %<CR>
		" autocmd FileType python nnoremap <localleader>fq :!python %<CR>
	" go
		autocmd FileType go nnoremap <localleader>fe :!./%:r<CR>
		autocmd FileType go nnoremap <localleader>fw :!go build %<CR>
		autocmd FileType go nnoremap <localleader>fq :!go build % && ./%:r<CR>
	" shell
		autocmd FileType sh nnoremap <localleader>fe :!./%<CR>
		autocmd FileType sh nnoremap <localleader>fw :!bash %<CR>
		autocmd FileType sh nnoremap <localleader>fq :!dash %<CR>
	" latex
	" groff
	" markdown
	" rmd
	" " sent
	" 	autocmd Filetype text nnoremap <localleader>fe :!sent -f 'Liberation Sans' %<CR>

" netrw
	let g:netrw_banner = 0
	let g:netrw_liststyle = 3
	let g:netrw_browse_split = 4
	let g:netrw_winsize = 80
	let g:netrw_menu = 1
	let g:netrw_altv = 1
	let g:netrw_cursor = 0
	let g:netrw_fastbrowse = 2
	let g:netrw_sort_by = "name"
	let g:netrw_sort_direction = "normal"
	nnoremap <leader>fa :25Lex<CR>
	nnoremap <leader>fv :Ex<CR>

"" transparent bg
	" so ~/.vim/modules/background.vim

"" Omnifunc
	" au FileType php setl ofu=phpcomplete#CompletePHP
	" au FileType ruby,eruby setl ofu=rubycomplete#Complete
	" au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
	" " au FileType c setl ofu=ccomplete#CompleteCpp
	" au FileType css setl ofu=csscomplete#CompleteCSS

"" SuperTab
	" let g:SuperTabDefaultCompletionType = "<c-n>"
