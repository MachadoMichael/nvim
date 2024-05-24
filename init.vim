set nocompatible

set tabstop=4
set shiftwidth=4
syntax enable
colorscheme desert


" Load plugins
source ~/.config/nvim/plugins.vim

" Load key mappings
source ~/.config/nvim/mappings.vim

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
