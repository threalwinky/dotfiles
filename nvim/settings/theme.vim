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
highlight LineNr guifg=darkcyan guibg=black
if has('mouse')
    set mouse=a 
endif
