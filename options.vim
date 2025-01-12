let g:undo_dir = g:vimhome.'undo'

set signcolumn=auto
set encoding=utf-8
set number
set relativenumber
set fileformat=unix
set history=1000
exec 'set undofile undodir='.g:undo_dir.' undolevels=1000'
set wildignore=*.swp,*.bak,*.pyc
set novisualbell
set noerrorbells
set spelllang=en_us,de
set tabstop=4
set softtabstop=4
set shiftwidth=4
set splitbelow
set splitright
" set fillchars+=vert:\¦
set fillchars+=vert:\│
set wildmenu             " popup menu
set wildmode=full        " popup style
set foldmethod=marker    " code folding
set foldlevel=99
set foldenable
set showcmd              " show enterd key
set noshowmode           " diable showing mode in the old way
set autochdir            " change current dir to file's dir
set showmatch            " show match brackets, parantesies, etc..
set autoindent           " enable line indentaion
set smartindent          " smart indent enable
set cindent              " more
set bs=2                 " makes the backspace work functinal
set scrolloff=4          " start srolling from 5 lines to the end
set updatetime=50        " write to swapfile every 30 sec when I'm idle
set hidden
set list
" set listchars=tab:›\ 
set listchars=tab:\|\ 
set ruler
set guicursor=
set incsearch
set colorcolumn=77,78,79,80
set cursorline
