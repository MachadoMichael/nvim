-- lua/plugins/vimgo.lua
-- Go development tools with vim-go

return {
  "fatih/vim-go",          -- Go language support
  build = ":GoUpdateBinaries", -- Run GoUpdateBinaries after installation
  ft = "go",               -- Load plugin only when editing Go files
  config = function()
    -- Optional: Customize vim-go settings
    vim.g.go_fmt_command = "gofmt"  -- Use gofmt for formatting
    vim.g.go_auto_type_info = 1     -- Show type info automatically
    vim.g.go_def_mapping_enabled = 1 -- Enable Go definition mappings
  end,
}

