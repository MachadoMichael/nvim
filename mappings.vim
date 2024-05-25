let mapleader = "\<space>"

" Open file explorer
nnoremap <leader>e :NERDTreeToggle<CR>

" Reload file explorer
nmap <leader>rr :NERDTreeFocus<cr>R<c-w><c-p>

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
nnoremap <leader>l :vsplit<CR><C-w>l:term zsh<CR>i
nnoremap <leader>v :vsplit<CR><C-w>l
nnoremap <leader>h :split<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Find files with telescope
nnoremap <leader>f :lua require('telescope.builtin').grep_string({seach = vim.fn.input("Grep For >")})<CR>

" Coment a line
nnoremap <leader>cc

" CTRL + C now yank the selected
vmap <C-C> "+y

" Substitute
nnoremap <leader>s :s%///g<Left><Left>
nnoremap <leader>sc :s%///gc<Left><Left><Left>

xnoremap <leader>s :s%///g<Left><Left>
xnoremap <leader>sc :s%///gc<Left><Left><Left>

" Selecting a specfic word
vnoremap <S-f> y/\V<C-R>=escape(@",'/\')<CR><CR>

" Completion
inoremap <silent><expr> <C-space> compe#complete()
inoremap <silent><expr> <C-e> compe#close('<C-e>')
