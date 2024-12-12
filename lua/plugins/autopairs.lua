-- lua/plugins/autopairs.lua
-- Auto-pair plugin for inserting matching pairs automatically

return {
  "jiangmiao/auto-pairs", -- Simple auto-pairing for quotes, brackets, etc.
  event = "InsertEnter",  -- Load plugin only when entering insert mode
}

