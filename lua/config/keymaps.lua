local set = vim.keymap.set
local util = require("util")

util.cowboy()

set("n", "<leader>t", "<CMD>w<CR>", { desc = "Save buffer" })
set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
set("n", "<leader>bc", "<CMD>CopyBufferName<CR>", { silent = true, desc = "Yank buffer name" })
set("n", "<leader>bC", "<CMD>CopyBufferPath<CR>", { silent = true, desc = "Yank buffer path" })
set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace text" })
-- Keep it centered
set("n", "}", "}zz")
set("n", "{", "{zz")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "G", "Gzz")

set("n", "<leader>z", function()
  require("zen-mode").toggle({ window = { width = .50 } })
end, { desc = "ZenMode" })

set("n", "<leader>ct", ":CopilotToggle<CR>", { desc = "Toggle Copilot", silent = true })
set('i', '<C-s>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })

-- local del = vim.keymap.del
--- Delete keymaps
