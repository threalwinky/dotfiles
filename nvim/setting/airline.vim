set noshowmode
let g:airline_theme='ayu_dark'
let g:airline_powerline_theme=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
  
"" powerline symbols
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
" Shift z z ----------------------- close tab
	function MyTabLine()
	  let s = ''
	  for i in range(tabpagenr('$'))
	    " select the highlighting
	    if i + 1 == tabpagenr()
	      let s ..= '%#TabLineSel#'
	    else
	      let s ..= '%#TabLine#'
	    endif

	    " set the tab page number (for mouse clicks)
	    let s ..= '%' .. (i + 1) .. 'T'

	    " the label is made by MyTabLabel()
	    let s ..= ' %{MyTabLabel(' .. (i + 1) .. ')} '
	  endfor

	  " after the last tab fill with TabLineFill and reset tab page nr
	  let s ..= '%#TabLineFill#%T'

	  " right-align the label to close the current tab page
	  if tabpagenr('$') > 1
	    let s ..= '%=%#TabLine#%999Xclose'
	  endif

	  return s
	endfunction

function MyTabLabel(n)
	  let buflist = tabpagebuflist(a:n)
	  let winnr = tabpagewinnr(a:n)
	  return bufname(buflist[winnr - 1])
	endfunction
set guitablabel=%N:%M%t " Show tab numbers

nnoremap <silent> <C-n>  :tabnew  <CR>
nnoremap <silent> <C-F4> :tabclose<CR>
nnoremap <silent> <C-F1> :tabnext <CR>
nnoremap <silent> <C-F2> :tabprev <CR>
