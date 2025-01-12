function WrapperExpr(cmd)
endfunction

function! WrapperTerm(command) abort
	if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
	if g:split_term_style ==# 'vertical'
		let buffercmd = '50vnew'
	elseif g:split_term_style ==# 'horizontal'
		let buffercmd = '15new'
	else
		echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
		throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
	endif
	if exists('g:split_term_resize_cmd')
		exec g:split_term_resize_cmd
	endif
	exec buffercmd
	exec 'term ' . a:command
	exec 'setlocal nornu nonu'
	exec 'startinsert'
endfunction

let g:split_term_style = 'horizontal' " -

command! -nargs=0 CPPCompile  call WrapperTerm(printf('g++ %s -o %s', expand('%'), expand('%:r')))
command! -nargs=0 CCompile    call WrapperTerm(printf('gcc %s -o %s', expand('%'), expand('%:r')))
command! -nargs=0 CCRunOutput call WrapperTerm(printf('./%s', expand('%:r')))
command! -nargs=0 CPPDebug    call WrapperExpr(printf('g++ %s -o %s', expand('%'), expand('%:r')))
command! -nargs=0 CDebug      call WrapperExpr(printf('gcc %s -o %s', expand('%'), expand('%:r')))
autocmd FileType c     nnoremap <localleader>fe :CCompile<CR>
autocmd FileType cpp   nnoremap <localleader>fe :CPPCompile<CR>
autocmd FileType c,cpp nnoremap <localleader>fw :CCRunOutput<CR>
autocmd FileType c     nnoremap <localleader>fq :CDebug<CR>
autocmd FileType cpp   nnoremap <localleader>fq :CPPDebug<CR>


command! -nargs=0 EmbTerm  call TermWrapper(printf('bash'))
autocmd FileType *  nnoremap <localleader>tt   :EmbTerm<CR>


" let g:triggercmd = "term "
" " global
" " makefile
" au FileType * nnoremap <localleader>cc :exe g:triggercmd.'make'<CR>
" au FileType * nnoremap <localleader>ca :exe g:triggercmd.'make all'<CR>
" au FileType * nnoremap <localleader>cf :exe g:triggercmd.'make force'<CR>
" au FileType * nnoremap <localleader>cb :exe g:triggercmd.'make build'<CR>
" " git
" au FileType * nnoremap <localleader>gs :exe g:triggercmd.'git status -s'<CR>
" au FileType * nnoremap <localleader>gl :exe g:triggercmd.'git log --oneline --stat --graph --all'<CR>
" au FileType * nnoremap <localleader>ga :exe g:triggercmd.'git add %'<CR>
" " c
" autocmd FileType c nnoremap <localleader>fq :exe g:triggercmd.'./%:r'<CR>
" autocmd FileType c nnoremap <localleader>fe :exe g:triggercmd.'gcc -Wall %:r.c -o %:r'<CR>
" autocmd FileType c nnoremap <localleader>fw :exe g:triggercmd.'gcc -Wall %:r.c && ./%:r'<CR>
" " autocmd FileType c nnoremap <localleader>fq :cgetexpr system('gcc -Wall % -o %:r')<CR>
" " cpp
" autocmd FileType cpp nnoremap <localleader>fq :exe g:triggercmd.'./%:r'<CR>
" autocmd FileType cpp nnoremap <localleader>fe :exe g:triggercmd.'g++ -Wall % -o %:r'<CR>
" autocmd FileType cpp nnoremap <localleader>fw :exe g:triggercmd.'g++ -Wall % -o %:r && ./%:r'<CR>
" " lua
" autocmd FileType lua nnoremap <localleader>fq :exe g:triggercmd.'./%'<CR>
" autocmd FileType lua nnoremap <localleader>fe :exe g:triggercmd.'lua5.4 %'<CR>
" " autocmd FileType lua nnoremap <localleader>fw :exe g:triggercmd.'luac %'<CR>
" " python
" autocmd FileType python nnoremap <localleader>fq:!./%<CR>
" autocmd FileType python nnoremap <localleader>fe:!python %<CR>
" " autocmd FileType python nnoremap <localleader>fw:!python %<CR>
" " go
" autocmd FileType go nnoremap <localleader>fq :exe g:triggercmd.'./%:r'<CR>
" autocmd FileType go nnoremap <localleader>fe :exe g:triggercmd.'go build %'<CR>
" autocmd FileType go nnoremap <localleader>fw :exe g:triggercmd.'go build % && ./%:r'<CR>
" " shell
" autocmd FileType sh nnoremap <localleader>fe :exe g:triggercmd.'./%'<CR>
" autocmd FileType sh nnoremap <localleader>fw :exe g:triggercmd.'bash %'<CR>
" autocmd FileType sh nnoremap <localleader>fq :exe g:triggercmd.'dash %'<CR>
" " latex
" " groff
" " markdown
" " rmd
" " " sent
" " 	autocmd Filetype text nnoremap <localleader>fe :!sent -f 'Liberation Sans' %<CR>
