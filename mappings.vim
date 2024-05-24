let mapleader = "\<space>"

" Open file explorer
nnoremap <leader>e :NERDTreeToggle<CR>

" Substitute

" Set UPPERCASE, inside Visual mode: Shift + U
inoremap <c-u> <ESC>viwUi

" Set lowercase, inside Visual mode: U
nnoremap <c-u> viwU<ESC>

" Save file
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<CR>

" Exit file
inoremap <C-q> <esc>:exit<cr>
nnoremap <C-q> :exit<cr>

" Exit all files
inoremap <C-a> <esc>:wqa<cr>
nnoremap <C-a> :wqa<cr>

" Exit and Save file
inoremap <C-w> <esc>:wq<cr>
nnoremap <C-w> :wq<cr>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Split screen vertically, open terminal, enter insert mode
nnoremap <leader>l :vsplit<CR><C-w>l:terminal<CR>i

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
