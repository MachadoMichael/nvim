-- lua/plugins/nerdtree.lua
-- NERDTree configuration

return {
  "preservim/nerdtree",                       -- NERDTree plugin
  cmd = { "NERDTreeToggle", "NERDTreeFind" }, -- Lazy-load on specific commands
  config = function()
    -- Show hidden files in NERDTree
    vim.g.NERDTreeShowHidden = 1

    -- Keymap to toggle NERDTree
    vim.api.nvim_set_keymap(
      "n", "<C-n>", ":NERDTreeToggle<CR>",
      { noremap = true, silent = true, desc = "Toggle NERDTree" }
    )
  end,
}

