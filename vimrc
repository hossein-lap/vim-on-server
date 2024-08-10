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
		" Auto completion
			Plug 'hossein-lap/vim-auto-popmenu'
			Plug 'hossein-lap/vim-dict'
		" comment
			Plug 'tpope/vim-commentary'
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
	set number
	set fileformat=unix
	set history=1000
	set undofile undodir=~/.vim/undo undolevels=1000
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
	set foldmethod=marker    " code folding
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
	set laststatus=2
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
	hi! SyntasticErrorSign    ctermfg=darkred    ctermbg=NONE       cterm=bold
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

" statusbar
	set laststatus=2       " show status line
	set statusline=        " blank space
	set statusline+=\      " blank space
	set statusline+=%.30F  " filename
	set statusline+=\      " blank space
	set statusline+=%m     " modified symbl
	set statusline+=\      " blank space
	set statusline+=%r     " read-only symbl
	set statusline+=%=     " separator
	set statusline+=\ \    " blank spaces
	set statusline+=%c:    " filename
	set statusline+=%l/%L  " blank spaces
	set statusline+=\ \    " blank spaces
	set statusline+=%{&ff} " EOL char
	set statusline+=\ \    " blank spaces
	set statusline+=%{&ft} " EOL char
	set statusline+=\      " blank space

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
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
	let g:syntastic_enable_balloons = 1
	" au FileType sh let b:syntastic_checkers = ["checkbashisms"]

" auto complation
	" let g:apc_cr_confirm = 0
	let g:apc_enable_ft = {
		\'text':1,
		\'markdown':1,
		\'lua':1,
		\'go':1,
		\'c':1,
		\'python':1,
	\ } " This will overwite the default filetypes
	" source for dictionary, current or other loaded buffers, see ':help cpt'
	set cpt=.,k,w,b,d                      " buffers, keyword, windows
	set completeopt=menu,menuone,noinsert  " don't select the first item
	set shortmess+=c                       " suppress annoy messages
	" dictionary
		let g:vim_dict_config = {'html':'html,javascript,css', 'markdown':'text'}

" keybind
	let mapleader=' '  " change the <localleader> Key
	let maplocalleader='\' " change the <leader> Key
	" to system clipboard
		vnoremap <silent> <leader>y "+Y
		nnoremap <silent> <leader>y "+Y
		nnoremap <silent> <leader>P "+p
		vnoremap <silent> <leader>p "_dP
		nnoremap <silent> <leader>d "_d
		vnoremap <silent> <leader>d "_d
	" mg keybinds
		nnoremap <silent> <C-x><C-s> :w!<CR>
		nnoremap <silent> <C-x><C-c> :qa!<CR>
	" buffers
		nnoremap <silent> <leader>bn :bnext<CR>
		nnoremap <silent> <leader>bp :bprevious<CR>
	" location-list
		nnoremap <silent> <C-j> :lnext<CR>zz
		nnoremap <silent> <C-k> :lprev<CR>zz
	" quickfix-list
		nnoremap <silent> <C-l> :cnext<CR>zz
		nnoremap <silent> <C-h> :cprev<CR>zz
	" fuzzy finder
		noremap <silent> <leader>pf :Files<CR>
		noremap <silent> <leader>gf :GFiles<CR>
	" spell check
		nmap <leader>ss :setlocal spell!<CR>
	" write with sudo
		cmap WW w !sudo tee % > /dev/null
	" comment
		" replaced with a plugin

" vim indentaion
	au FileType vim set foldmethod=indent    " code folding

" execute
	let g:triggercmd = "term"
	" global
		" makefile
			au FileType * nnoremap <localleader>cc :exe g:triggercmd.'make'<CR>
			au FileType * nnoremap <localleader>ca :exe g:triggercmd.'make all'<CR>
			au FileType * nnoremap <localleader>cf :exe g:triggercmd.'make force'<CR>
			au FileType * nnoremap <localleader>cb :exe g:triggercmd.'make build'<CR>
		" git
			au FileType * nnoremap <localleader>gs :exe g:triggercmd.'git status -s'<CR>
			au FileType * nnoremap <localleader>gl :exe g:triggercmd.'git log --oneline --stat --graph --all'<CR>
			au FileType * nnoremap <localleader>ga :exe g:triggercmd.'git add %'<CR>
	" c
		autocmd FileType c nnoremap <localleader>fq :exe g:triggercmd.'./%:r'<CR>
		autocmd FileType c nnoremap <localleader>fe :exe g:triggercmd.'gcc -Wall %:r.c -o %:r'<CR>
		autocmd FileType c nnoremap <localleader>fw :exe g:triggercmd.'gcc -Wall %:r.c && ./%:r'<CR>
		" autocmd FileType c nnoremap <localleader>fq :cgetexpr system('gcc -Wall % -o %:r')<CR>
	" cpp
		autocmd FileType cpp nnoremap <localleader>fq :exe g:triggercmd.'./%:r'<CR>
		autocmd FileType cpp nnoremap <localleader>fe :exe g:triggercmd.'g++ -Wall % -o %:r'<CR>
		autocmd FileType cpp nnoremap <localleader>fw :exe g:triggercmd.'g++ -Wall % -o %:r && ./%:r'<CR>
	" lua
		autocmd FileType lua nnoremap <localleader>fq :exe g:triggercmd.'./%'<CR>
		autocmd FileType lua nnoremap <localleader>fe :exe g:triggercmd.'lua5.4 %'<CR>
		" autocmd FileType lua nnoremap <localleader>fw :exe g:triggercmd.'luac %'<CR>
	" python
		autocmd FileType python nnoremap <localleader>fq:!./%<CR>
		autocmd FileType python nnoremap <localleader>fe:!python %<CR>
		" autocmd FileType python nnoremap <localleader>fw:!python %<CR>
	" go
		autocmd FileType go nnoremap <localleader>fq :exe g:triggercmd.'./%:r'<CR>
		autocmd FileType go nnoremap <localleader>fe :exe g:triggercmd.'go build %'<CR>
		autocmd FileType go nnoremap <localleader>fw :exe g:triggercmd.'go build % && ./%:r'<CR>
	" shell
		autocmd FileType sh nnoremap <localleader>fe :exe g:triggercmd.'./%'<CR>
		autocmd FileType sh nnoremap <localleader>fw :exe g:triggercmd.'bash %'<CR>
		autocmd FileType sh nnoremap <localleader>fq :exe g:triggercmd.'dash %'<CR>
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
