
nnoremap <C-S-B> :! clear; python3 %<CR>
inoremap <C-S-B> <ESC>:w<CR>:! clear; python3 %<CR>
vnoremap <C-S-B> <ESC>:w<CR>:! clear; python3 %<CR>

" ###########################################
" Python Shortcuts
" Class

" Normal Mode
nnoremap <silent> <leader>cl :call python#class()<CR>
nnoremap <silent> <leader>get :call python#getter()<CR>
nnoremap <silent> <leader>set :call python#getter()<CR>

" Insert Mode
inoremap <silent> pycl <C-O>:call python#class()<CR>
inoremap <silent> pyget <C-O>:call python#getter()<CR>
inoremap <silent> pyset <C-O>:call python#getter()<CR>


