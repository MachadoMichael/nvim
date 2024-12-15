-- Basic Neovim Options
vim.opt.number = true             -- Show line numbers
vim.opt.tabstop = 4               -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4            -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.smartindent = true        -- Smart autoindenting when starting a new line

-- Neovide Configurations
vim.o.guifont = "JetBrainsMono Nerd Font:h12" -- Adjust font and size
vim.g.neovide_font_features = { "liga" } -- Enable ligatures


-- Encoding and Font
vim.opt.encoding = 'UTF-8'
vim.o.guifont = 'JetBrainsMono Nerd Font:h14'

-- NERDTree Configurations
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeWinPos = 'right'

-- Gopls Configurations
vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Highlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 200 }
    end,
})

