" fzf -- tmux keybinds

" list files
nnoremap <silent> <leader>ls :Files<CR>

" list git files
nnoremap <silent> <leader>lg :GFiles<CR>

" buffers
nnoremap <silent> <leader>lb :Buffers<CR>

" marks
nnoremap <silent> <leader>lm :Marks<CR>

" (c)tags
nnoremap <silent> <leader>lt :Tags<CR>

" windows
nnoremap <silent> <leader>lw :Windows<CR>



" tmux sessionizer
nnoremap <silent> <leader>tf :!tmux-sessionizer >/dev/null 2>&1<CR>

" list tmux sessions
nnoremap <silent> <leader>tl :!tl<CR>

" " new / switch tmux session
" nnoremap <silent> <leader>tm :!tm >/dev/null 2>&1<CR>

