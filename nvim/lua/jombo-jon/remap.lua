local nnoremap = require("jombo-jon.keymap").nnoremap
local inoremap = require("jombo-jon.keymap").inoremap
local vnoremap = require("jombo-jon.keymap").vnoremap

-- Naviguation
nnoremap("<c-j>","<C-W>j")
nnoremap("<c-k>","<C-W>k")
nnoremap("<c-h>","<C-W>h")
nnoremap("<c-l>","<C-W>l")

-- Copy / Paste
nnoremap("<leader>y","\"+y")
vnoremap("<leader>y","\"+y")

-- Tab / Explorer / Nerdtree
-- nnoremap("<leader>e","<cmd>Ex<CR>")
nnoremap("<leader>e" ,":NvimTreeOpen<CR>")
nnoremap("<leader>t" ,":NvimTreeToggle<CR>")
nnoremap("<leader>tn",":tabnew<CR>")
nnoremap("<leader>te",":tabedit %<CR>")

-- Save and quit
nnoremap("<leader>w",":w<CR>")
nnoremap("<leader>q",":q<CR>")
nnoremap("<leader>sw",":w !sudo tee%<CR>")
nnoremap("<leader>so",":so %<CR>")

inoremap("jj","<Esc>")

-- Date and time
inoremap("<leader>dd",os.date ("%A, %m %B %Y"))
inoremap("<leader>tt",os.date ("%H:%M"))
inoremap("<leader>dt",os.date ("%A, %m %B %Y (%H:%M)"))

-- Marks 
-- m <id> : mark line, min are for same file, maj are for different file
-- ' <id> : jump to mark
nnoremap("<leader>mm",":marks<CR>")

-- Telescope Remap
-- Find files using Telescope command-line sugar.
nnoremap("<leader>ff","<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg","<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb","<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh","<cmd>Telescope help_tags<cr>")


-- Window Operation Ctrl + W 
-- S is for horizontal
-- V is for Vertical
nnoremap ("<c-left>", ":vertical resize -5<CR>")
nnoremap ("<c-down>", ":resize +5<CR>")
nnoremap ("<c-up>", ":resize -5<CR>")
nnoremap ("<c-right>",":vertical resize +5<CR>")

-- Spell check
-- set spelllang=en,fr
-- nnoremap("<silent> <leader>s",":set spell!<cr>")
-- nnoremap("<leader>sn"," ]s")
-- nnoremap("<leader>sp"," [s")
-- zg to add word to dictionnary
