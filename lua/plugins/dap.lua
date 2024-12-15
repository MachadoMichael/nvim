-- -- lua/plugins/dap.lua
-- -- Golang Debugger with DAP and UI
--
-- return {
--   -- Core DAP plugin
--   {
--     "mfussenegger/nvim-dap",
--     dependencies = {
--       "rcarriga/nvim-dap-ui", -- DAP UI for better visuals
--       "leoluz/nvim-dap-go",   -- DAP integration for Go
--       "nvim-neotest/nvim-nio", -- Required for nvim-dap-ui to work
--     },
--     config = function()
--       local dap = require("dap")
--       local dapui = require("dapui")
--
--       -- Setup DAP UI
--       dapui.setup()
--
--       -- Automatically open/close DAP UI on debugging start/stop
--       dap.listeners.after.event_initialized["dapui_config"] = function()
--         dapui.open()
--       end
--       dap.listeners.before.event_terminated["dapui_config"] = function()
--         dapui.close()
--       end
--       dap.listeners.before.event_exited["dapui_config"] = function()
--         dapui.close()
--       end
--
--       -- Configure Go Debugger (using Delve)
--       require("dap-go").setup()
--
--       -- Keymaps for Debugging
--       local map = vim.keymap.set
--       local opts = { noremap = true, silent = true }
--
--       -- Start Debugging
--       map("n", "<F5>", ":DapContinue<CR>", opts)     -- Start/Continue Debugger
--       map("n", "<F10>", ":DapStepOver<CR>", opts)    -- Step Over
--       map("n", "<F11>", ":DapStepInto<CR>", opts)    -- Step Into
--       map("n", "<F12>", ":DapStepOut<CR>", opts)     -- Step Out
--       map("n", "<leader>db", ":DapToggleBreakpoint<CR>", opts) -- Toggle Breakpoint
--       map("n", "<leader>dr", ":DapRestartFrame<CR>", opts)     -- Restart Frame
--       map("n", "<leader>dl", ":DapShowLog<CR>", opts)          -- Show Logs
--       map("n", "<leader>dt", function() dapui.toggle() end, opts) -- Toggle Debug UI
--     end,
--   },
-- }


-- lua/plugins/dap.lua
-- Golang Debugger with DAP and UI

return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui", -- DAP UI for better visuals
    "leoluz/nvim-dap-go",   -- DAP integration for Go
    "nvim-neotest/nvim-nio", -- Required for nvim-dap-ui to work
  },
  build = ":GoUpdateBinaries", -- Ensure binaries are updated
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    -- Setup DAP UI
    dapui.setup()

    -- Automatically open/close DAP UI
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    -- Setup Delve for Go
    require("dap-go").setup()

    -- Expose DAP UI toggle function for keymaps
    vim.g.dapui_toggle = function()
      dapui.toggle()
    end
  end,
}

