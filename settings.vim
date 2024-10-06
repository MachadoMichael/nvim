set guifont=JetBrainsMono\ Nerd\ Font:h14
set encoding=UTF-8


" Gopls configs
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'


" Show hidden files in NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = 'right'


" Treesitter configuration using vim.cmd() to run Lua code from Vimscript
" Lua block to configure Treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"go"},  -- Add 'go' parser here
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
