let mapleader      = ' ' " change the <localleader> Key
let maplocalleader = '\' " change the <leader> Key

" normal mode
inoremap <silent> <C-c> <Esc>

" some useful custom
nnoremap <leader>wr :set wrap!<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap J mzJ`z
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap Q <nop>

" to system clipboard
vnoremap <silent> <leader>y "+y
nnoremap <silent> <leader>y "+Y
nnoremap <silent> <leader>P "+p
vnoremap <silent> <leader>p "_dP
nnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>d "_d

" buffers
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [b :bprevious<CR>

" quickfix-list
nnoremap <silent> <C-j> :cnext<CR>zz
nnoremap <silent> <C-k> :cprev<CR>zz

" location-list
nnoremap <silent> <leader>l :lnext<CR>zz
nnoremap <silent> <leader>h :lprev<CR>zz

" fuzzy finder
noremap <silent> <leader>pf :Files<CR>
noremap <silent> <leader>gf :GFiles<CR>

" spell check
nmap <leader>ss :setlocal spell!<CR>

" write with sudo
cmap WW w !sudo tee % > /dev/null

" chmod
noremap <silent> <leader>x :!chmod +x %:p<CR>

" fzf / tmux
exec 'source '.g:vimhome.'fzf.vim'
