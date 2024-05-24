
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


call plug#end()


