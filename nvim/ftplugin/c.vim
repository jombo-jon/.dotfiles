
" ###########################################
" C-Language Shortcuts
" include
imap cinc <CR>#include<INC><ESC>?INC<CR>viwdi

" if,else
imap cif <CR>if(Condition){<CR><CR>}<ESC>?Condition<CR>viwdi
imap celif <CR>else if(Condition){<CR><CR>}<ESC>?Condition<CR>viwdi
imap celse <CR>else{<CR>Condition<CR>}<ESC>?Condition<CR>viwdi

" Switch,case
imap csw <CR>switch(Condition){<CR>case :<CR><CR>break;<CR><CR>default :<CR>}<ESC>?Condition<CR>viwdi
imap cca case Condition:<CR><CR>break;<CR><ESC>?Condition<CR>viwdi

