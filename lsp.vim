let g:SuperTabDefaultCompletionType = "<c-y>"
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_virtualtext_cursor = 'current'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
" let g:ale_floating_window_border = repeat([''], 8)
" let b:ale_linters = {
" \	'go': ['gopls'],
" \	'lua': ['lua-language-server'],
" \}
" let g:ale_fixers = {
" \	 ['remove_trailing_lines', 'trim_whitespace'],
" \	javascript': ['eslint'],
" \}
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=DarkMagenta
function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))
	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors
	return l:counts.total == 0 ? 'OK' : printf(
	\   'W:%d E:%d',
	\   all_non_errors,
	\   all_errors
	\)
endfunction

" " linter {{{
" 	set statusline+=%#warningmsg#
" 	set statusline+=%{SyntasticStatuslineFlag()}
" 	" set statusline+=%#errormsg#
" 	" set statusline+=%*
" 	let g:syntastic_error_symbol = '->'
" 	let g:syntastic_warning_symbol = '->'
" 	let g:syntastic_style_error_symbol = '~>'
" 	let g:syntastic_style_warning_symbol = '~>'
" 	let g:syntastic_always_populate_loc_list = 1
" 	let g:syntastic_auto_loc_list = 1
" 	let g:syntastic_check_on_open = 1
" 	let g:syntastic_check_on_wq = 0
" 	let g:syntastic_enable_balloons = 1
" 	" au FileType sh let b:syntastic_checkers = ["checkbashisms"]
" " }}}

" " auto complation {{{
" 	" let g:apc_cr_confirm = 0
" 	let g:apc_enable_ft = {
" 		\'text':1,
" 		\'markdown':1,
" 		\'lua':1,
" 		\'go':1,
" 		\'c':1,
" 		\'python':1,
" 	\ } " This will overwite the default filetypes
" 	" source for dictionary, current or other loaded buffers, see ':help cpt'
" 	set cpt=.,k,w,b,d                      " buffers, keyword, windows
" 	set completeopt=menu,menuone,noinsert  " don't select the first item
" 	set shortmess+=c                       " suppress annoy messages
" 	" dictionary
" 		let g:vim_dict_config = {'html':'html,javascript,css', 'markdown':'text'}
" " }}}

" " Omnifunc {{{
" au FileType php setl ofu=phpcomplete#CompletePHP
" au FileType ruby,eruby setl ofu=rubycomplete#Complete
" au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
" " au FileType c setl ofu=ccomplete#CompleteCpp
" au FileType css setl ofu=csscomplete#CompleteCSS
" " }}}

" keybinds {{{
nnoremap ]d     :lua vim.diagnostic.goto_next()<CR>
nnoremap [d     :lua vim.diagnostic.goto_prev()<CR>
nnoremap K      :lua vim.lsp.buf.hover()<CR>
nnoremap gd     :lua vim.lsp.buf.definition()<CR>
" nnoremap <C-S>h :lua vim.lsp.buf.signature_help()<CR>
" }}}
