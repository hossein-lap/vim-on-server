
function ColorMyPencils(color)
	set background=dark
	set termguicolors
	execute 'colorscheme '.a:color

	let g:alduin_Shout_Animal_Allegiance = 1

	" colorscheme
	hi! Normal      ctermfg=NONE  guifg=NONE  guibg=NONE ctermbg=NONE
	hi! EndOfBuffer ctermfg=NONE  guifg=NONE  guibg=NONE ctermbg=NONE
	hi! String      ctermbg=NONE  guibg=NONE
	hi! Visual      ctermfg=black guifg=black
endfunction

call ColorMyPencils('alduin')

" hi! Search      guibg=NONE  ctermbg=NONE
" hi! SignColumn  ctermfg=NONE     guifg=NONE     guibg=NONE     ctermbg=NONE
" hi! String      ctermfg=yellow   guifg=yellow   guibg=NONE     ctermbg=NONE
" hi! Folded      ctermfg=blue     guifg=blue     guibg=NONE     ctermbg=NONE
" hi! SpecialKey  ctermfg=darkgray guifg=darkgray guibg=NONE     ctermbg=NONE
" hi! VertSplit   ctermfg=white    guifg=white    guibg=NONE     ctermbg=NONE
" hi! MatchParen  ctermfg=white    guifg=white    guibg=black    ctermbg=black   gui=underline cterm=underline
" hi! PmenuSel    ctermfg=gray     guifg=gray     guibg=black    ctermbg=black   gui=NONE      cterm=NONE
" hi! Pmenu       ctermfg=black    guifg=black    guibg=gray     ctermbg=gray    gui=NONE      cterm=NONE
" hi! StatusLine  ctermfg=blue     guifg=blue     guibg=black    ctermbg=black   gui=NONE      cterm=NONE
" hi! ErrorMsg    ctermfg=black    guifg=black    guibg=darkred  ctermbg=darkred gui=NONE      cterm=NONE
" hi! Search      guibg=NONE  ctermbg=NONE
" hi! Visual      guifg=black ctermfg=black
" hi! link PmenuSel Search
" hi! SyntasticError        ctermfg=black      ctermbg=darkred    cterm=NONE
" hi! SyntasticErrorSign    ctermfg=darkred    ctermbg=NONE       cterm=bold
" hi! SyntasticWarning      ctermfg=black      ctermbg=darkyellow cterm=NONE
" hi! SyntasticWarningSign  ctermfg=darkyellow ctermbg=NONE       cterm=NONE
" hi! SyntasticStyleError   ctermfg=red        ctermbg=NONE       cterm=NONE
" hi! SyntasticStyleWarning ctermfg=blue       ctermbg=NONE       cterm=NONE
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

