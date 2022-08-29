" Debugger
nnoremap  <Leader>dl :call vimspector#Launch()<CR>
nnoremap  <Leader>ds :call vimspector#Reset()<CR>
nnoremap  <Leader>dc :call vimspector#Continue()<CR>

nnoremap  <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap  <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap      <Leader>dr <Plug>VimspectorRestart
nmap      <Leader>de <Plug>VimspectorStepOut
nmap      <Leader>di <Plug>VimspectorStepInto
nmap      <Leader>do <Plug>VimspectorStepOver

"Default
nnoremap <silent><leader>s :w<CR>
nnoremap <silent><leader>q :wq<CR>
inoremap <silent><C-d> <esc>Vypi
nnoremap <silent><leader>db :vsplit<CR><C-w>l:e sol.inp<CR>:vertical resize 40<CR>:split<CR><C-w>j:e sol.out<CR><C-w>h
nnoremap <silent><leader>eb <C-w>lZZZZ
nnoremap <silent><leader><leader> :noh<CR>
imap <silent><C-h> <esc>wi
imap <silent><C-l> <esc>bi
imap <silent>jj <esc>
nmap <silent> <leader>t :NERDTreeToggle<CR>
