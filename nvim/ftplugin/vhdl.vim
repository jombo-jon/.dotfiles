
" ###########################################
" VHDL Shortcuts
" Normal Mode
" nnoremap <silent> <leader>cl :call python#class()<CR>
" nnoremap <silent> <leader>get :call python#getter()<CR>
" nnoremap <silent> <leader>set :call python#getter()<CR>

" Insert Mode
imap >>   =>
imap <<   <=

imap stdl   std_logic;<CR>
imap stl    std_logic;<CR>
imap istl   : in std_logic;<CR>
imap ostl   : out std_logic;<CR>

imap stdv   std_logic_vector();<ESC>hi
imap stv    std_logic_vector();<ESC>hi
imap istv    : in std_logic_vector();<ESC>hi
imap ostv    : out std_logic_vector();<ESC>hi

imap ,sig   signal
imap ,var   variable
imap ,int   integer
imap ,boo   boolean
imap ,ri    rising_edge()<ESC>i
imap ,fa    falling_edge()<ESC>i
imap ifri    if rising_edge() then<ESC>5hi
imap iffa    if falling_edge() then<ESC>5hi

