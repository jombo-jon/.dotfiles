" Class Definition
function vhdl#procedure() " note we don't need to capitalize the first letter this time
    execute "normal iprocedure ProcName () is\<CR>\<ESC>"
    execute "normal ibegin\<CR>\<ESC>"
    execute "normal iend procudure;\<CR>\<ESC>"
    execute "normal ?ProcName\<CR>ciw\<ESC>"
endfunction

function vhdl#process() " note we don't need to capitalize the first letter this time
    execute "normal iprocess(SensitivityList) is\<CR>\<ESC>"
    execute "normal ibegin\<CR>\<ESC>"
    execute "normal iend process;\<CR>\<ESC>"
    execute "normal ?SensitivityList\<CR>ciw\<ESC>"
endfunction

