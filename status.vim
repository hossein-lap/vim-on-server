
" colors {{{
let s:statusline_theme = {
	\ 'plain': {
	\ 	'accent_bg' : { "gui": "#d8d8d8", "cterm": "255"},
	\ 	'accent_fg' : { "gui": "#151617", "cterm": "235"},
	\ 	'body_bg'   : { "gui": "#151617", "cterm": "015"},
	\ 	'body_fg'   : { "gui": "#151617", "cterm": "235"},
	\ },
	\ 'void': {
	\ 	'accent_bg' : { "gui": "#295340", "cterm": "255"},
	\ 	'accent_fg' : { "gui": "#eeeeee", "cterm": "235"},
	\ 	'body_bg'   : { "gui": "#151617", "cterm": "015"},
	\ 	'body_fg'   : { "gui": "#f1f1f1", "cterm": "235"},
	\ },
	\ 'debian': {
	\ 	'accent_bg' : { "gui": "#a80030", "cterm": "255"},
	\ 	'accent_fg' : { "gui": "#eeeeee", "cterm": "235"},
	\ 	'body_bg'   : { "gui": "#151617", "cterm": "015"},
	\ 	'body_fg'   : { "gui": "#eeeeee", "cterm": "235"},
	\ },
	\ 'dwm': {
	\ 	'accent_bg' : { "gui": "#005577", "cterm": "255"},
	\ 	'accent_fg' : { "gui": "#eeeeee", "cterm": "235"},
	\ 	'body_bg'   : { "gui": "#151617", "cterm": "015"},
	\ 	'body_fg'   : { "gui": "#d8d8d8", "cterm": "235"},
	\ },
	\ 'blue': {
	\ 	'accent_bg' : { "gui": "#007fcc", "cterm": "255"},
	\ 	'accent_fg' : { "gui": "#eeeeee", "cterm": "235"},
	\ 	'body_bg'   : { "gui": "#151617", "cterm": "015"},
	\ 	'body_fg'   : { "gui": "#d8d8d8", "cterm": "235"},
	\ },
	\ 'orange': {
	\ 	'accent_bg' : { "gui": "#ff9800", "cterm": "255"},
	\ 	'accent_fg' : { "gui": "#151617", "cterm": "235"},
	\ 	'body_bg'   : { "gui": "#151617", "cterm": "015"},
	\ 	'body_fg'   : { "gui": "#d8d8d8", "cterm": "235"},
	\ },
\ }

let s:current_theme  = s:statusline_theme['dwm']
let s:current_accent = { 
	\ "bg": s:current_theme['accent_bg'],
	\ "fg": s:current_theme['accent_fg'],
	\ "gui": "bold", "cterm": "bold"
\ }
let s:current_body = { 
	\ "bg": s:current_theme['body_bg'],
	\ "fg": s:current_theme['body_fg'],
\ }
let s:current_spec = { 
	\ "bg": s:current_theme['body_bg'],
	\ "fg": s:current_theme['accent_bg'],
\ }

function! s:h(group, style)
	exec "highlight! " a:group
		\ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
		\ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
		\ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
		\ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
		\ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
		\ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
		\ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("User1", s:current_accent)
call s:h("User2", s:current_body)
call s:h("User3", s:current_spec)

" hi User1 ctermbg=255 ctermfg=235 guibg=#cccccc guifg=#121212 cterm=bold gui=bold 
" hi User2 ctermfg=015 ctermbg=235 guifg=#f1f1f1 guibg=#121212 cterm=NONE gui=NONE
" hi! link StatuslineNC String
" }}}

" arrays - variables {{{
let g:currentmode= {
    \ 'n'  : 'N',
    \ 'v'  : 'V',
    \ 'V'  : 'V·L',
\ "\<C-V>" : 'V·B',
    \ 's'  : 'S',
    \ 'S'  : 'S·L',
    \ '^S' : 'S·B',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'Rv' : 'V·R',
    \ 'c'  : 'C',
    \ 'cv' : 'V·Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'P',
    \ 'rm' : 'M',
    \ 'r?' : 'Co',
    \ '!'  : 'Sh',
    \ 't'  : 'T'
\}


" let g:currentmode= {
"     \ 'n'  : 'Normal',
"     \ 'no' : 'Normal·Operator Pending',
"     \ 'v'  : 'Visual',
"     \ 'V'  : 'V·Line',
" \ "\<C-V>" : 'V·Block',
"     \ 's'  : 'Select',
"     \ 'S'  : 'S·Line',
"     \ '^S' : 'S·Block',
"     \ 'i'  : 'Insert',
"     \ 'R'  : 'Replace',
"     \ 'Rv' : 'V·Replace',
"     \ 'c'  : 'Command',
"     \ 'cv' : 'Vim Ex',
"     \ 'ce' : 'Ex',
"     \ 'r'  : 'Prompt',
"     \ 'rm' : 'More',
"     \ 'r?' : 'Confirm',
"     \ '!'  : 'Shell',
"     \ 't'  : 'Terminal'
" \}

let g:status_fileformat = {
	\ 'unix'  : 'unix',
	\ 'dos'   : 'dos',
	\ 'mac'   : 'mac',
\}

let s:status_symbols = {
	\ 'pipe' : {
	\ 	'left'  : '|',
	\ 	'right' : '|',
	\ },
	\ 'single' : {
	\ 	'left'  : '›',
	\ 	'right' : '‹',
	\ },
	\ 'double' : {
	\ 	'left'  : '»',
	\ 	'right' : '«',
	\ },
	\ 'long' : {
	\ 	'left'  : '⟩',
	\ 	'right' : '⟨',
	\ },
	\ 'ascii' : {
	\ 	'left'  : '>',
	\ 	'right' : '<',
	\ },
\ }
 
let s:status_current = s:status_symbols['double']
let g:status_separator = {
	\ 'left'  : s:status_current['left'],
	\ 'right' : s:status_current['right'],
	\ 'blank' : ' ',
\}

" }}}

" helper functions {{{
function! StatuslineGitBranch()
    if g:git_branch != ''
        return 'git:'.g:git_branch
    else
        return 'null'
    endif
endfunction

function! GetGitBranch()
    let l:is_git_dir = system('echo -n $(git rev-parse --is-inside-work-tree)')
    let g:git_branch = l:is_git_dir == 'true' ?
        \ system('bash -c "echo -n \" $(git rev-parse --abbrev-ref HEAD 2>/dev/null) \""') : ''
       " \ system('bash -c "echo -n $(git rev-parse --abbrev-ref HEAD)"') : ''
endfunction

autocmd BufEnter * call GetGitBranch()

function! FiletypeStatus(ft)
    if a:ft != ''
        return a:ft
    else
        return toupper(g:currentmode[mode()])
    endif
endfunction
" }}}

" statusline config {{{
set laststatus=2           " show status line
set statusline=            " blank space
set statusline+=%1*%{g:status_separator['blank']}
set statusline+=%1*%{g:currentmode[mode()]}
set statusline+=%1*%{g:status_separator['blank']}
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%n      " buffer
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%{g:status_separator['left']}
set statusline+=%2*%{g:status_separator['blank']}
" set statusline+=%2*%{toupper(g:currentmode[mode()])}
set statusline+=%2*%<%F    " filename
set statusline+=%2*%m      " modified symbl
set statusline+=%2*%r      " read-only symbl
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%{g:status_separator['left']}
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%3*%{StatuslineGitBranch()}
set statusline+=%2*%=      " split
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%l/%L   " blank spaces
set statusline+=%2*,       " seprator
set statusline+=%2*%c%V    " filename
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%{g:status_separator['right']}
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%3*%{FiletypeStatus(&ft)}      " filetype
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%{g:status_separator['right']}
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%2*%{g:status_fileformat[&ff]} " EOL char
set statusline+=%2*%{g:status_separator['blank']}
set statusline+=%1*%{g:status_separator['blank']}
set statusline+=%1*%{LinterStatus()}
set statusline+=%1*%{g:status_separator['blank']}

" }}}

" " tmp {{{
" function LeftStatus(nr)
" 	if a:nr == win_getid()
" 		let file_name = expand('%:r')
" 		let linebar = file_name
" 	else
" 		let linebar = "no test"
" 	endif
"     return linebar
" endfun
" function RightStatus(nr)
" 	if a:nr == win_getid()
" 		" let file_name = &filename
" 		let file_type = &ft
" 		let file_format = &ff
" 		" let line_all = line()
" 		let line_current = line('.')
" 		let column_current = col('.')
" 		let linebar = line(".").",".col('.')
" 	else
" 		let linebar = "no test"
" 	endif
"     let buf_type = &buftype
"     return linebar
" endfun

" function MyStatusLineWrapper() abort
"     let startup_win_id = win_getid()
" 	let s = "%{LeftStatus(".startup_win_id.")}%m%r "."%="." %{RightStatus(".startup_win_id.")}"
"     return s
" endfun

" set statusline=%!MyStatusLineWrapper()
" " set statusline+=%{LeftStatus(win_getid())}
" " set statusline+=%=
" " set statusline+=%{RightStatus(win_getid())}
" " }}}

