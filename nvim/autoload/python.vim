" Class Definition
function python#class() " note we don't need to capitalize the first letter this time
    execute "normal iclass NameClass():\<CR>\<ESC>"
    execute "normal i\<Tab>def __init__(self):\<CR>\<ESC>"
    execute "normal ?NameClass\<CR>ciw\<ESC>"
endfunction

" Class, get attribute
function python#getter()
    call inputsave()
    let attrname = input("Enter attribute name: ")
    call inputrestore()
    execute "normal i\<Tab>@property\<CR>\<ESC>"
    execute "normal i\<Tab>def " . attrname . "(self):\<CR>\<ESC>"
    execute "normal i\<Tab>\<Tab>return self._" . attrname . "\<CR>\<ESC>"
endfunction

" Class, get attribute
function python#setter()
    call inputsave()
    let attrname = input("Enter attribute name: ")
    call inputrestore()
    execute "normal i\<Tab>@" . attrname . ".setter\<CR>\<ESC>"
    execute "normal i\<Tab>def " . attrname . "(self):\<CR>\<ESC>"
    execute "normal i\<Tab>\<Tab>return self._" . attrname . "\<CR>\<ESC>"
endfunction

