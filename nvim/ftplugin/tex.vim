
" ############V###############################
" Spellcheck
set spelllang=en
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

" Spell check enable for files : tex
set spell spelllang=en

nnoremap s= z=

" LaTeX Engine
let g:livepreview_engine = 'pdflatex'
let g:livepreview_previewer = 'evince'
let g:livepreview_cursorhold_recompile = 0
let g:updatetime = 100

" ###########################################
" LATEX Shortcuts
" Image
imap timg <CR>\begin{figure}[ht]<CR>\centering<CR>\includegraphics[width=\linewidth]{figures/ImageFileName}<CR>\caption{WidePicture}\label{fig:view}<CR>\end{figure}<ESC>?ImageFileName<CR>viwdi

" Chapter, Section, Subsection, ...
imap tchap <CR>\chapter{ChapterName}%\label{chap:}<CR><ESC>?ChapterName<CR>viwdi
imap tsec <CR>\section{ChapterName}%\label{sec:}<CR><ESC>?ChapterName<CR>viwdi
imap tsub <CR>\subsection{ChapterName}%\label{sec:}<CR><ESC>?ChapterName<CR>viwdi
imap tssub <CR>\subsubsection{ChapterName}%\label{sec:}<CR><ESC>?ChapterName<CR>viwd
" Equation
imap tequ <CR>\begin{equation}\label{eq:EquationLabel}<CR><CR>\end{equation}<CR>where:\\<CR>\begin{tabular}{C{0.05\linewidth}p{0.9\linewidth}}<CR>$x$ & fisrt argument \\ <CR>\end{tabular}<ESC>?EquationLabel<CR>viwdi
" Table
imap ttab <CR>\begin{table}<CR>\centering<CR>\label{tab:TableLabel}<CR>\begin{tabular}{}<CR>\end{tabular}<CR>\end{tabular}<CR>\end{table}<ESC>?TableLabel<CR>viwdi
" Item

imap titem <CR>\begin{itemize}<CR>\item ItemLabel:<CR>\end{itemize}<ESC>?ItemLabel<CR>viwdi
