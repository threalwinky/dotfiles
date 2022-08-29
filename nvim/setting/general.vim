"Set guicolor
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
	if (has("termguicolors"))
        set termguicolors
    endif
endif
"Files
set autoread
set nobackup
set noswapfile
"Syntax
syntax on
syntax enable
filetype plugin indent on
"GUI
set number 
set nowrap
set nocompatible
set encoding=utf-8
set title 
set updatetime=500 
set showcmd	
set termencoding=utf-8 
set fileencoding=utf-8
set hid 
set shortmess+=c
set cmdheight=1 
set laststatus=2
set showtabline=2
set noshowmode 
set display+=lastline
set signcolumn=yes
set previewheight=3
set foldmethod=manual
set laststatus=2
"Tab
set tabstop=4 softtabstop=4 shiftwidth=4
"Backspace
set backspace=indent,eol,start
"Undo, redo
set undolevels=100 
set undoreload=1000
set undodir=~/.config/nvim/undodir
"Auto-save
let g:auto_save = 1
let g:auto_save_silent = 1
"Snippet

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set mouse=a
