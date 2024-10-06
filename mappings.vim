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

" Find string with telescope
nnoremap <leader>fs :lua require('telescope.builtin').grep_string({seach = vim.fn.input("Grep For >")})<CR><CR>

" Find files with telescope
nnoremap <leader>f :Telescope find_files<CR>


" CTRL + C now yank the selected
vmap <C-C> "+y

" Substitute
" Map leader+s to substitute selected word with new value
nnoremap <leader>s :%s//g<left><left>
vnoremap <leader>s "hy:%s/<C-r>h//g<left><left>

" Selecting a specfic word
vnoremap <S-f> y/\V<C-R>=escape(@",'/\')<CR><CR>

" Completion
inoremap <silent><expr> <C-space> compe#complete()
inoremap <silent><expr> <C-e> compe#close('<C-e>')

" Create a mapping to reload NERDTree
nnoremap <leader><S-e> :NERDTreeRefreshRoot<CR>

" Mapping for Codeium
nnoremap <leader>c :call codeium#Chat()<CR>

" Mapping for Terminal Navigation
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
