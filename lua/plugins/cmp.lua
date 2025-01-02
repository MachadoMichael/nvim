-- lua/plugins/cmp.lua
-- nvim-cmp setup with sources and snippet support

return {
  -- Completion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",    -- Buffer completions
      "hrsh7th/cmp-path",      -- Path completions
      "hrsh7th/cmp-cmdline",   -- Command-line completions
      "hrsh7th/cmp-vsnip",     -- VSnip integration
      "hrsh7th/vim-vsnip",     -- Snippet engine
      "neovim/nvim-lspconfig", -- Required for LSP configurations
    },
    config = function()
      local cmp = require("cmp")

      -- nvim-cmp setup
      cmp.setup({
        snippet = {
          -- Snippet engine
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        mapping = {
          ["<C-Space>"] = cmp.mapping.complete(),  -- Trigger completion
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion
          ["<Tab>"] = cmp.mapping.select_next_item(), -- Next suggestion
          ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- LSP completion source
          { name = "vsnip" },    -- Snippets
          { name = "buffer" },   -- Buffer words
          { name = "path" },     -- File paths
        }),
      })

      -- Setup for command-line completions
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "cmdline" },
          { name = "path" },
        },
      })

      -- Setup for search completion (/ or ?)
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- LSP configuration (required for cmp-nvim-lsp)
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      -- Example for Lua LSP (add more LSP servers as needed)
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
    end,
  },
}

