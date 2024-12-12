-- lua/plugins/fzynative.lua
-- Fzy-native extension for Telescope
return {
    "nvim-telescope/telescope-fzy-native.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
          },
        },
      })
      -- Load the fzy-native extension
      require("telescope").load_extension("fzy_native")
    end,
}
