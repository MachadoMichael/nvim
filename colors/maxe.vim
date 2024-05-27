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
set termguicolors

" General colors
hi Normal       guifg=#f0f0f0 guibg=#0c0c0c  " Darker background
hi NonText      guifg=#8b8b8b
hi Cursor       guifg=#1c1b1b guibg=#d0d0d0
hi LineNr       guifg=#6b6b6b guibg=#1c1b1b
hi VertSplit    guifg=#6b6b6b guibg=#1c1b1b
hi StatusLine   guifg=#d0d0d0 guibg=#6b6b6b
hi StatusLineNC guifg=#6b6b6b guibg=#1c1b1b
hi SignColumn   guifg=#6b6b6b guibg=#1c1b1b

" Syntax highlighting
hi Comment      guifg=#666666
hi String       guifg=#400057  " Pastel dark purple
hi Function     guifg=#ffffff " Pastel dark blue
hi Identifier   guifg=#89a3e0
hi Type         guifg=#c52159 " guifg=#9d81ba
hi Statement    guifg=#89a3e0
hi Keyword      guifg=#89a3e0
hi PreProc      guifg=#89a3e0
hi Number       guifg=#400057

" Specific to Go
hi goDirective  guifg=#400057
hi goDeclType   guifg=#400057
hi goBuiltins   guifg=#400057

" Specific to Neovim
hi NormalFloat  guifg=#d0d0d0 guibg=#1c1b1b
hi FloatBorder  guifg=#6b6b6b guibg=#1c1b1b

" Customizations
hi CursorLineNr ctermfg=none guibg=#400057 "guibg=#d62976
" Making sure the line number is visible on the purple background
hi CursorLine   ctermfg=none guibg=#400057 " guibg=#d62976

set cursorline
set nocursorcolumn

" Ensure CursorLine is applied consistently
augroup vimrc_cursorline
  autocmd!
  autocmd FileType nerdtree setlocal cursorline
  autocmd FileType nerdtree setlocal winhighlight=CursorLine:CursorLine
augroup END

" Custom NERDTree colors
hi NERDTreeDir guifg=#c52159 " Change to your preferred color for directories
hi NERDTreeDirSlash guifg=#c52159 " Change to your preferred color for directory slashes
