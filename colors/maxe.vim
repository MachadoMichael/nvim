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
hi NonText      guifg=#8b8b8b
hi Cursor       guifg=#1c1b1b guibg=#d0d0d0
hi LineNr       guifg=#6b6b6b guibg=#1c1b1b
hi VertSplit    guifg=#6b6b6b guibg=#1c1b1b
hi StatusLine   guifg=#d0d0d0 guibg=#6b6b6b
hi StatusLineNC guifg=#6b6b6b guibg=#1c1b1b
hi SignColumn   guifg=#6b6b6b guibg=#1c1b1b

" Syntax highlighting
hi Comment      guifg=#666666
hi String       guifg=#935291  " Pastel dark purple
hi Function     guifg=#ffffff " Pastel dark blue hi Identifier   guifg=#89a3e0
hi Type         guifg=#d1356a " guifg=#9d81ba
hi Statement    guifg=#89a3e0
hi Keyword      guifg=#89a3e0
hi PreProc      guifg=#89a3e0
hi Number       guifg=#935291

" Specific to Go
hi goDirective  guifg=#935291
hi goDeclType   guifg=#935291
hi goBuiltins   guifg=#935291

" Specific to Neovim
hi NormalFloat  guifg=#d0d0d0 guibg=#1c1b1b
hi FloatBorder  guifg=#6b6b6b guibg=#1c1b1b

" Customizations
hi CursorLineNr ctermfg=none guibg=#400057 "guibg=#d62976
" Making sure the line number is visible on the purple background
hi CursorLine   ctermfg=none guibg=#400057 " guibg=#d62976


set cursorline
"set nocursorcolumn

" Ensure CursorLine is applied consistently
augroup vimrc_cursorline
  autocmd!
  autocmd FileType nerdtree setlocal cursorline
  autocmd FileType nerdtree setlocal winhighlight=CursorLine:CursorLine
augroup END

" Custom NERDTree colors
hi NERDTreeDir guifg=#d1356a " Change to your preferred color for directories
hi NERDTreeDirSlash guifg=#d1356a" Change to your preferred color for directory slashes









" Saved colors
" 400057 dark purple
" c52159 red
