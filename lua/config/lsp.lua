-- lua/config/lsp.lua
-- Placeholder LSP configuration file

local M = {}

-- Example LSP setup with Mason and nvim-lspconfig
local lspconfig = require("lspconfig")

-- List of LSP servers to configure
local servers = { "lua_ls", "pyright" }

for _, server in ipairs(servers) do
  lspconfig[server].setup({})
end

return M

