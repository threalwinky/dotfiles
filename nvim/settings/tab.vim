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
