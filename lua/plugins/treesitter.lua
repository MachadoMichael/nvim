-- lua/plugins/treesitter.lua
-- Treesitter configuration for better syntax highlighting and incremental selection

return {
  "nvim-treesitter/nvim-treesitter", -- Treesitter plugin
  build = ":TSUpdate",               -- Run `:TSUpdate` after installation
  event = { "BufReadPost", "BufNewFile" }, -- Lazy-load Treesitter when opening files
  config = function()
    require("nvim-treesitter.configs").setup({
      -- List of languages to ensure Treesitter is installed for
      ensure_installed = { "go", "lua", "vim", "vimdoc", "query" }, 

      -- Syntax highlighting
      highlight = {
        enable = true,                      -- Enable Treesitter syntax highlighting
        additional_vim_regex_highlighting = false,
      },

      -- Incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",           -- Start incremental selection
          node_incremental = "grn",         -- Select the next node
          scope_incremental = "grc",        -- Select the scope
          node_decremental = "grm",         -- Deselect the node
        },
      },

      -- Optional: Indentation based on Treesitter
      indent = { enable = true },

        raibow = {
                enable = true,
                extended_mode = true,
        },
    })
  end,
}

