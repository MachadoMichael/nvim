" magic.vim - Custom color scheme 'magic'

" Clear existing highlighting and set the color scheme name
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "magic"

" Set background to dark with transparency
set background=dark
highlight Normal ctermbg=none guibg=none

" Customize color for func keyword in Golang
highlight link goFunction Function

" Define colors for functions and methods
highlight Function ctermfg=none guifg=#7013AD
highlight Method ctermfg=none guifg=#7013AD

" Define colors for primitive types
highlight Type ctermfg=none guifg=#AD1366

" Define CursorLine colors
highlight CursorLine  ctermbg=7013AD guibg=#7013AD ctermfg=none guifg=#E8E8E8

" Additional options
set cursorline " Highlight the current line
set nocursorcolumn
set number " Show line numbers
set relativenumber " Show relative line numbers
set cursorline " Highlight the current line
set laststatus=2 " Always show status line
set statusline=%F%m%r%h%w%=[%l,%v][%p%%] " Customize status line format
set showmode " Show current mode (e.g., -- INSERT --)
set showcmd " Show partial commands in the last line of the screen
set ruler " Show the line and column number of the cursor position
set showmatch " Show matching brackets
set incsearch " Incremental search
set hlsearch " Highlight search results
set ignorecase " Ignore case when searching
set smartcase " Override 'ignorecase' if the search pattern contains uppercase characters
set nowrap " Disable line wrapping
set scrolloff=3 " Minimum number of lines to keep above and below the cursor
set tabstop=4 " Number of spaces a <Tab> in the file counts for
set shiftwidth=4 " Number of spaces to use for each step of (auto)indent
set expandtab " Use spaces instead of tabs
set autoindent " Copy indent from current line when starting a new line
set smartindent " Automatically insert indents in some cases
set list " Show invisible characters like tabs and trailing spaces

