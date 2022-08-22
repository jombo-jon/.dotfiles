local Hydra = require('hydra')
local cmd = require('hydra.keymap-util').cmd


Hydra({
   name = 'NVIM',
   hint = [[
 _v_: split vertically
 
_<Esc>_ : Exit
]],
   config = {
      color = 'red',
      invoke_on_body = true,
      hint = {
         position = 'middle-right',
         border = 'solid',
      },
   },
   mode = 'n',
   body = '<Leader>.v',
   heads = {
      { 'v', cmd 'vertical split' },
      { '<Esc>', nil, { exit = true, nowait = true } },
   }
})
