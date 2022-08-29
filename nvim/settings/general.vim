if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif
syntax on
syntax enable
filetype plugin indent on
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
set autoread 
set noswapfile 
set nobackup 
set backspace=indent,eol,start
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set undolevels=100 
set undoreload=1000
set undodir=~/.config/nvim/undodir

:set backspace=indent,eol,start
