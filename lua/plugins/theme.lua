-- lua/plugins/theme.lua
-- Tinted Vim Theme setup
-- osaka_solarized Theme setup

return {
  -- "tinted-theming/tinted-vim", -- Tinted Vim theme plugin
  "ioksc/vim-osaka-solarized-theme",
  priority = 1000,             -- Load theme early
  config = function()
    -- vim.cmd.colorscheme("base16-horizon-dark") -- Set the desired theme
    vim.cmd.colorscheme("osaka_solarized") -- Set the desired theme
  end,
}

