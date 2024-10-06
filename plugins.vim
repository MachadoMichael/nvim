
call plug#begin('~/.config/nvim/plugged')

" file explorer
Plug 'preservim/nerdtree'

" Syntax Support
Plug 'sheerun/vim-polyglot'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" Go extention
Plug 'fatih/vim-go'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" Search
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" comment line
Plug 'preservim/nerdcommenter'

" For Vimscript (init.vim)
Plug 'golang/tools', { 'rtp': 'gopls/cmd/gopls' }

" LSP and completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'


" Hexadecimal background on same color its
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Linter
Plug 'dense-analysis/ale'


" Autocomplete opensource Codeium
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }

" Treesitter plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()



