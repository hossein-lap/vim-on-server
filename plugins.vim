call plug#begin(g:vimhome.'modules/')
	" fuzzy finder
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	" " Linter
	" 	Plug 'vim-syntastic/syntastic'
	" " Auto completion
	" 	Plug 'hossein-lap/vim-auto-popmenu'
	" 	Plug 'hossein-lap/vim-dict'
	" comment
	Plug 'tpope/vim-commentary'
	" colorscheme
	" Plug 'Mofiqul/dracula.nvim',
	" Plug 'Shatur/neovim-ayu',
	Plug 'dikiaap/minimalist',
	" Plug 'ellisonleao/gruvbox.nvim',
	Plug 'hossein-lap/Alduin'
	Plug 'hossein-lap/vim-256noir'
	Plug 'hossein-lap/vim-hos'
	Plug 'hossein-lap/vim-hybrid',
	Plug 'hossein-lap/vim-lupper',
	Plug 'hossein-lap/vim-octave',
	Plug 'hossein-lap/vim-paramount',
	Plug 'hossein-lap/vim-sunbather',
	Plug 'hossein-lap/vim-wal',
	" Plug 'ishan9299/nvim-solarized-lua',
	Plug 'rafi/awesome-vim-colorschemes',
	" Plug 'tiagovla/tokyodark.nvim',
	" git integration
	Plug 'tpope/vim-fugitive'
	" session manager
	Plug 'vim-scripts/restore_view.vim'
	" LSP client
	Plug 'dense-analysis/ale'
	" Snippet manager
	Plug 'hossein-lap/vim-snipmate'
	Plug 'marcweber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'hossein-lap/vim-snippets'
	" " Coloizer
	" Plug 'norcalli/nvim-colorizer.lua'
	" Terminal window
	Plug 'iaalm/terminal-drawer.vim'
		let g:terminal_drawer_shell = "zsh"
		let g:terminal_drawer_leader = "<C-q>"
call plug#end()
