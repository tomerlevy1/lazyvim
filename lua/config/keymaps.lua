local set = vim.keymap.set
local util = require("util")
util.cowboy()

set("n", "<leader>t", "<CMD>w<CR>", { desc = "Save buffer" })
set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
set("n", "<leader>bc", "<CMD>CopyBufferName<CR>", { silent = true, desc = "Yank buffer name" })
set("n", "<leader>bC", "<CMD>CopyBufferPath<CR>", { silent = true, desc = "Yank buffer path" })
set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace text" })

-- Resize window using <ctrl> arrow keys
set("n", "<C-Up>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
set("n", "<C-Down>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
set("n", "<C-Left>", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
set("n", "<C-Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })

set("n", "<C-Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })

-- Keep it centered
set("n", "}", "}zz")
set("n", "{", "{zz")
set("n", "<C-d>", "10jzz")
set("n", "<C-u>", "10kzz")
set("n", "G", "Gzz")

set("n", "<leader>Z", function()
  require("zen-mode").toggle({ window = { width = .50 } })
end, { desc = "ZenMode" })
set("n", "<leader>z", function()
  require("zen-mode").toggle({ window = { width = .75 } })
end, { desc = "ZenMode" })

set("n", "<leader>ct", ":CopilotToggle<CR>", { desc = "Toggle Copilot", silent = true })

-- util.cowboy()

-- local del = vim.keymap.del
--- Delete keymaps
