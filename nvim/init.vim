call plug#begin()
Plug 'fcpg/vim-fahrenheit'
Plug 'joshdick/onedark.vim'
Plug 'andweeb/presence.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'sickill/vim-monokai'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set nocompatible
set number
set noshowmode
set t_Co=256

syntax on
colorscheme monokai

let g:lightline = {
		\ 'colorscheme' : 'one',
		\ }
let g:closetag_html_style=1
source ~\AppData\Local\nvim-data\plugged\closetag.vim
let nvim_settings_dir = '~\AppData\Local\nvim-data\settings\'
execute 'source '.nvim_settings_dir.'coc.vim'
execute 'source '.nvim_settings_dir.'resize.vim'