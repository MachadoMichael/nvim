-- Set leader key
vim.g.mapleader = ' '

-- Mappings
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File Explorer
keymap('n', '<leader>e', ':NERDTreeToggle<CR>', opts)
keymap('n', '<leader>rr', ':NERDTreeFocus<CR>R<C-w><C-p>', opts)
keymap('n', '<leader><S-e>', ':NERDTreeRefreshRoot<CR>', opts)

-- Case Manipulation
keymap('i', '<C-u>', '<ESC>viwUi', opts)
keymap('n', '<C-u>', 'viwU<ESC>', opts)

-- File Operations
keymap('i', '<C-s>', '<esc>:w<CR>', opts)
keymap('n', '<C-s>', ':w<CR>', opts)
keymap('i', '<C-q>', '<esc>:exit<CR>', opts)
keymap('n', '<C-q>', ':exit<CR>', opts)
keymap('i', '<C-a>', '<esc>:wqa<CR>', opts)
keymap('n', '<C-a>', ':wqa<CR>', opts)
keymap('i', '<C-w>', '<esc>:wq<CR>', opts)
keymap('n', '<C-w>', ':wq<CR>', opts)

-- Indentation
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Split and Terminal Navigation
keymap('n', '<leader>l', ':vsplit<CR><C-w>l:term zsh<CR>i', opts)
keymap('n', '<leader>v', ':vsplit<CR><C-w>l', opts)
keymap('n', '<leader>h', ':split<CR>', opts)

-- Window Navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Terminal Navigation
keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', opts)
keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', opts)
keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', opts)
keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', opts)

-- Telescope
keymap('n', '<leader>fs', function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
end, opts)
keymap('n', '<leader>f', ':Telescope find_files<CR>', opts)

-- Clipboard and Substitution
keymap('v', '<C-C>', '"+y', opts)
keymap('n', '<leader>s', ':%s//g<left><left>', opts)
keymap('v', '<leader>s', '"hy:%s/<C-r>h//g<left><left>', opts)

-- Visual Search
keymap('v', '<S-f>', 'y/\\V<C-R>=escape(@",\'/\\\')<CR><CR>', opts)

-- Codeium
keymap('n', '<leader>c', ':call codeium#Chat()<CR>', opts)

-- Completion (Note: This might need adjustment based on your completion setup)
keymap('i', '<C-space>', function() 
    -- Adjust this based on your actual completion plugin
    require('cmp').complete() 
end, opts)


-- Check Nerd Font and DevIcon support
vim.keymap.set('n', '<leader>nf', function()
    print("Nerd Font Test: \u{e5fb}  \u{f013}  \u{e702}")
end, { noremap = true, silent = true })

-- Debug Adapter Protocol (DAP) keybindings
keymap("n", "<leader>dc", ":DapContinue<CR>", opts)          -- Start/Continue Debugger
keymap("n", "<F10>", ":DapStepOver<CR>", opts)         -- Step Over
keymap("n", "<F11>", ":DapStepInto<CR>", opts)         -- Step Into
keymap("n", "<F12>", ":DapStepOut<CR>", opts)          -- Step Out
keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", opts) -- Toggle Breakpoint
keymap("n", "<leader>dr", ":DapRestartFrame<CR>", opts)     -- Restart Debugger
keymap("n", "<leader>dl", ":DapShowLog<CR>", opts)          -- Show Debug Logs
keymap("n", "<leader>dt", function()
  vim.g.dapui_toggle() -- Toggle DAP UI using the function from dap.lua
end, opts)

