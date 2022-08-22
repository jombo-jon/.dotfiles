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
noremap <leader>so :so%<CR>

"Remap the key jj for ESC in insert mode
imap jj <Esc>

"Remap the controls for naviguating in windows split windows in VIM
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab / Explorer / Nertree
 nnoremap <C-n> :tabedit %<cr> <bar> :Ex<cr>

 nnoremap <leader>tn :tabnew<cr>
 nnoremap <leader>te :tabedit % <cr>
 nnoremap <leader>e :Ex<cr>

 " Time and Date in insert mode only
imap <silent> <leader>dd <C-R>=strftime("%Y/%m/%d - %A")<CR>
imap <silent> <leader>tt <C-R>=strftime("%H:%M")<CR>
imap <silent> <leader>dt <C-R>=strftime("%A - %Y/%m/%d - %H:%M")<CR>


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
set foldmethod=syntax

" NeoVim Plugins
if has('nvim')
    call plug#begin('~/.config/nvim/plugged')
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-commentary'
        " Plug 'tpope/vim-markdown'
        " Plug 'masukomi/vim-markdown-folding'
        
        " Plug 'scrooloose/nerdtree'

        " GruvBox
        Plug 'morhetz/gruvbox'

        Plug 'nvim-telescope/telescope.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        " Markdown (from video nickjj)
        Plug 'godlygeek/tabular'
        " Plug 'plasticboy/vim-markdown'
        " If you don't have nodejs and yarn
        " use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
        " see: https://github.com/iamcco/markdown-preview.nvim/issues/50
        " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
        " Plug 'masukomi/vim-markdown-folding'

        
        " If you have nodejs and yarn
        "Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

        " Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
        " Plug 'ThePrimeagen/harpoon'

        " Plug 'jremmen/vim-ripgrep'
        "Plug 'miyase256/vim-ripgrep', {'branch': 'fix/remove-complete-from-RgRoot'}

        " Completion framework
        Plug 'nvim-lua/completion-nvim'
        Plug 'hrsh7th/nvim-cmp'
        
        " LSP completion source for nvim-cmp
        " Plug 'hrsh7th/cmp-nvim-lsp'
        
        " Snippet completion source for nvim-cmp
        " Plug 'hrsh7th/cmp-vsnip'
        
        " Other usefull completion sources
        " Plug 'hrsh7th/cmp-path'
        " Plug 'hrsh7th/cmp-buffer'
        
        " See hrsh7th's other plugins for more completion sources!
        " LSP 
        Plug 'neovim/nvim-lsp'
        Plug 'neovim/nvim-lspconfig'
        Plug 'kabouzeid/nvim-lspinstall'

        " LSP - Rust
        Plug 'simrat39/rust-tools.nvim'

        call plug#end()
    
    " ColorScheme Setup
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'
    colorscheme gruvbox

endif


" Find next occurence of ++
nnoremap <leader><leader>   /++<CR> 

" Markdown plasticboy controls
" let g:vim_markdown_folding_style_pythonic = 1

" Folding ----------------------------------------------------------------- {{{
" Marks for files
" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za
" }}}
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

" let g:vimwiki_folding = 'expr'
" autocmd FileType vimwiki setlocal syntax=markdown
" autocmd FileType vimwiki setlocal foldenable
"
lua <<EOF
require("jombo-jon")
EOF

filetype plugin indent on
