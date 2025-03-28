-- lua/plugins/mason.lua
-- Mason setup for managing LSP servers

return {
  {
    "williamboman/mason.nvim",
    version = "v1.8.0",
    build = ":MasonUpdate", -- Automatically update registries
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright" }, -- Example LSP servers
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig", -- Neovim LSP configurations
    config = function()
      local lspconfig = require("lspconfig")

      -- Setup servers installed via Mason
      local servers = { "lua_ls", "pyright" }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({})
      end
    end,
  },
}

