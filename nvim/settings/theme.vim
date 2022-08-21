"set gui-color
if (empty($TMUX))
 if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif 
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"Interface
:set guioptions-=m
:set guioptions-=T
:set guioptions-=r
:set guioptions-=L

"Display
syntax on
filetype plugin indent on
set number
set aw 
set nocompatible
set encoding=utf-8
set nowrap "---------------------------------- do not automatically wrap on load
set nospell "-------------------------------------------------- Disable spelling
set formatoptions-=t "--------------- Do not automatically wrap text when typing
set formatoptions=tcqronj "-------------------- Set vims text formatting options
set title "-------------------------------------- Let vim set the terminal title
set updatetime=500 "-------------------------------- Redraw the status bar often
set showcmd	"--------------------------------------- Display incomplete commands
set termencoding=utf-8 "------------------------------------------- Always utf-8
set fileencoding=utf-8
set hid "---------------------------------- Buffer becomes hidden when abandoned
set shortmess+=c
set cmdheight=1 "--------------------------- Just need one line for command line
set laststatus=2 "-------------------------------------- Always show status line
set showtabline=2 "----------------------------------------- Always show tabline
set noshowmode "--------------------------- Hide default mode text (e.g. INSERT)
set display+=lastline "--------------------- As must as possible of the lastline
set signcolumn=yes "---------------------------------- Always open gutter column
set previewheight=3 "------------------------------------ Smaller preview height

"Syntax
syntax on "---------------------------------------------- Enable Syntax for Code
syntax enable
set foldmethod=manual "---------------------------------- Support fold by indent
set laststatus=2
"File access
set autoread "---------------------------------------- Auto reloaded Edited File
set noswapfile "------------------------------------------ Dont create wrap file
set nobackup "------------------------------------------------- Dont save backup
filetype plugin on "--------------------------------------------- Turn on plugin

"Typings
set backspace=indent,eol,start "----------------- Allow backspace in insert mode

"Tab, Indent
set tabstop=4 softtabstop=4 shiftwidth=4"-----------------------Set width of tab
set expandtab

"Undo, Redo
set undolevels=100 "------------------------------- Default is 1000 -> Too large
set undoreload=1000 "----------------------------- Default is 10000 -> Too large
set undodir=~/.config/nvim/undodir "--------------- Default folder for undo step

"Set theme

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
colorscheme PaperColor
color default

"Set lightline
let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'active':{
        \   'left' : [['mode','paste'],
        \             ['readonly', 'filename', 'modified', 'tag']]
        \},
        \ 'component': {
        \     'tag' : 'I love Kafuu Chino'
        \ },
        \}

"Mouse
if has('mouse')
    set mouse=a "----------------------------- Allow use mouse, possible in nvim
endif
