"* Import plugins *"
call plug#begin()

"Theme"
Plug 'semibran/vim-colors-synthetic'
Plug 'lanox/lanox-vim-theme'
Plug 'yassinebridi/vim-purpura'
Plug 'pacokwon/onedarkhc.vim'
Plug 'bluz71/vim-nightfly-guicolors'

"Airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"File Browsing"
Plug 'preservim/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'unkiwii/vim-nerdtree-sync'

"Syntax highlight"
Plug 'sheerun/vim-polyglot'
Plug 'jackguo380/vim-lsp-cxx-highlight'

"Terminal"
Plug 'voldikss/vim-floaterm'

"Snippet"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Code Intelligence"
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'pappasam/coc-jedi',                     
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim' 
Plug 'preservim/nerdcommenter'                
Plug 'liuchengxu/vista.vim'

"Discord Presence"
"Plug 'andweeb/presence.nvim'

"Wakatime"
Plug 'wakatime/vim-wakatime'
call plug#end()

"* General *"
"set t_BE=0

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
set backspace=indent,eol,start
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"* Set theme *"
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif
color nightfly
hi Normal ctermfg=NONE ctermbg=NONE

"* Set airline *"
"let g:airline_theme='ayu_dark'
let g:airline_theme='luna'
let g:airline_powerline_theme=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = 'ln'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.colnr='col'"
let g:airline_section_a = airline#section#create(['mode'])
let g:airline_section_b = airline#section#create_left(['I love Sayu Ogiwara'])
let g:airline_section_c = airline#section#create(['%f'])
let g:airline_section_x = airline#section#create(['%P'])
let g:airline_section_y = airline#section#create(['%B'])
let g:airline_section_z = airline#section#create_right(['filetype'])
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#coc_git = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
nnoremap <silent> <C-n>  :tabnew  <CR>
nnoremap <silent> <C-F4> ZZ<CR>
nnoremap <silent> <C-F1> :tabnext <CR>
nnoremap <silent> <C-F2> :tabprev <CR>

"Set terminal"
let g:floaterm_shell = 'cmd -nologo'
let g:floaterm_position = 'topright'
let g:floaterm_width = 0.5
let g:floaterm_height = 0.5
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
" Set color
hi Floaterm guifg=snow guibg=black
hi FloatermBorder guifg=black guibg=black
"hi FloatermNC guibg=darkred
" => Hotkey to manage terminalsl
" Open a new terminal 
nnoremap <silent> <leader>to    :FloatermNew<CR>
tnoremap <silent> <leader>to    <C-\><C-n>:FloatermNew<CR>
" Kill current terminal 
nnoremap <silent> <leader>tk :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> <leader>tk <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>
" Navigation next and previous terminal 
nnoremap <silent> <leader>tn :FloatermNext<CR>
tnoremap <silent> <leader>tn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <leader>tp :FloatermPrev<CR>
tnoremap <silent> <leader>tp <C-\><C-n>:FloatermPrev<CR>
" Toggle terminal
nnoremap <silent> <leader>tt :FloatermNew! <CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>
" Focus terminal 
nnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
tnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
" => Hotkey to run other console apps
" Git
nnoremap <silent> <leader>gl :FloatermNew! --position=bottomright --height=0.95 --width=0.7 --title='GitLog' git lg<CR>

"Set COC"
set nobackup
set nowritebackup

:highlight CocFloating ctermbg=darkblue
set updatetime=300
set signcolumn=yes
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" NOTE: There's always complete item selected by default, you may want to enable
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
let b:coc_diagnostic_disable = 1
"NERD Tree"
" F5 to toggle 
map <silent> <F5> :NERDTreeToggle<CR>
" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Change arrow to expand/collapse tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"let NERDTreeMapOpenInTab='<ENTER>'
" Git status icon
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" Hightlight current file
let g:nerdtree_sync_cursorline = 1



"All map"

nnoremap <silent><nowait> <leader>of :vsplit<CR><C-w>l:e a.out<CR>:vertical resize 40<CR>:split a.inp<CR>
nnoremap <silent><nowait> <leader>cf :wq<CR>:wq<CR>
nnoremap <silent><nowait> <leader>st :e ~\AppData\Local\nvim\init.vim<CR> <S-G>
