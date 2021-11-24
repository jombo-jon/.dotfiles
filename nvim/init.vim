" VIMRC
" Open at startup
" autocmd VimEnter * NERDTree
" Basic

"set termguicolors
syntax on

autocmd BufEnter * silent! lcd %:p:h

set number relativenumber
set background=dark

set mouse=a

if &term =~'256color'
    set t_ut=
endif

"Settings
set shell=/usr/bin/zsh
"set autoindent
"set autoindent noexpandtab tabstop=4 shiftwidth=4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set showcmd


set list
set listchars=eol:¬,tab:▸\

" Vim special clipboard alsway in clipboard  "+
set clipboard=unnamedplus

"---------------------------------------------------------------------------
if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window.
    "set lines=999 columns=999
    au GUIEnter * simalt ~n "x : us, n : fr
    "Windows GUI setup (uncomment if on Windows)
    set guioptions-=m "menu bar
    set guioptions-=T "toolbar
    set guioptions-=r "scrollbar
    set guioptions-=L "scrollbar

    "Change default windows font
    set guifont=Lucida_Sans_Typewriter:h9:cANSI:qDRAFT

    "Remove bells
    set noerrorbells
    set vb t_vb=
    
endif
"---------------------------------------------------------------------------

" New Keymaps and common used 

"Leader Key
let mapleader ="," 
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>

"Remap the key jj for ESC in insert mode
imap jj <Esc>

"Remap the controls for naviguating in windows split windows in VIM
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Explorer / Nertree
 nnoremap <C-n> :tabedit %<cr> <bar> :Ex<cr>
 nnoremap <leader>e :Ex<cr>

 " Time and Date in insert mode only
imap <silent> <leader>dd <C-R>=strftime("%Y/%m/%d - %A")<CR>
imap <silent> <leader>tt <C-R>=strftime("%H:%M")<CR>
imap <silent> <leader>dt <C-R>=strftime("%A - %Y/%m/%d - %H:%M")<CR>

" Vimwiki


" Mark Files
function s:Marked(var)
  let b:tmp = toupper(a:var)
  echo b:tmp
  return b:tmp
endfunction
command -nargs=1 Test :call Marked(<q-args>)

noremap <leader>mm :marks<CR>


" Telescope Remap
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Save as Sudo
cmap w!! w !sudo tee > /dev/null %


set showtabline=2
set nocompatible

" filetype off
filetype on

" NeoVim Plugins
if has('nvim')
    call plug#begin('~/.vim/plugged')
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-commentary'
        
        " Plug 'scrooloose/nerdtree'

        " GruvBox
        Plug 'morhetz/gruvbox'

        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'


        " Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
        " Plug 'ThePrimeagen/harpoon'

        Plug 'vimwiki/vimwiki'

        call plug#end()
    
    " ColorScheme Setup
    colorscheme gruvbox

endif

" Find next occurence of ++ 
nnoremap <leader><leader>   /++<CR> 

" Marks for files

" harpoon
" nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
" nnoremap <leader>d :lua require("harpoon.ui").toggle_quick_menu()<CR>
" nnoremap <leader>e :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

" nnoremap <leader>j :lua require("harpoon.ui").nav_file(1)<CR>
" nnoremap <leader>k :lua require("harpoon.ui").nav_file(2)<CR>
" nnoremap <leader>l :lua require("harpoon.ui").nav_file(3)<CR>
" nnoremap <leader>; :lua require("harpoon.ui").nav_file(4)<CR>
" nnoremap <leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
" nnoremap <leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
" nnoremap <leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
" nnoremap <leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>

filetype plugin indent on
