-- lua/plugins/theme.lua
-- Tinted Vim Theme setup

return {
  "tinted-theming/tinted-vim", -- Tinted Vim theme plugin
  priority = 1000,             -- Load theme early
  config = function()
    vim.cmd.colorscheme("base16-horizon-dark") -- Set the desired theme
  end,
}

