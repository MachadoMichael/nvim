" Maxe Theme
" Author: [Michael Machado]

set background=dark
set relativenumber
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "maxe"
colorscheme maxe

" General colors
hi Normal       guifg=#000000 guibg=#000000  " Darker background
hi NonText      guifg=#1b1b1b
hi Cursor       guifg=#1c1b1b guibg=#d0d0d0
hi LineNr       guifg=#6b6b6b guibg=#1c1b1b
hi VertSplit    guifg=#6b6b6b guibg=#1c1b1b
hi StatusLine   guifg=#d0d0d0 guibg=#6b6b6b
hi StatusLineNC guifg=#6b6b6b guibg=#1c1b1b
hi SignColumn   guifg=#6b6b6b guibg=#1c1b1b

" Syntax highlighting
hi Normal       guifg=#d0d0d0 guibg=#1c1b1b
hi Comment      guifg=#666666
hi String       guifg=#9d81ba  " Pastel dark purple
hi Function     guifg=#005b96  " Pastel dark blue
hi Identifier   guifg=#89a3e0
hi Type         guifg=#9d81ba
hi Statement    guifg=#89a3e0
hi Keyword      guifg=#89a3e0
hi PreProc      guifg=#89a3e0
hi Number       guifg=#9d81ba

" Specific to Go
hi goDirective  guifg=#89a3e0
hi goDeclType   guifg=#89a3e0
hi goBuiltins   guifg=#89a3e0

" Specific to Neovim
hi NormalFloat  guifg=#d0d0d0 guibg=#1c1b1b
hi FloatBorder  guifg=#6b6b6b guibg=#1c1b1b

" Customizations
highlight CursorLineNr  guibg=#d62976 " Making sure the line number is visible on the purple background
highlight CursorLine  ctermfg=none guibg=#d62976  ctermfg=none  


set cursorline
set nocursorcolumn

" Ensure CursorLine is applied consistently
augroup vimrc_cursorline
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter,FileType nerdtree setlocal cursorline
  autocmd WinLeave,BufWinLeave,FileType nerdtree setlocal nocursorline
augroup END


