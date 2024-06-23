local set = vim.keymap.set
local util = require("util")

util.cowboy()

set("n", "<C-s>", "<CMD>w<CR>", { silent = true })
set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
set("n", "<leader>bc", "<CMD>CopyBufferName<CR>", { silent = true, desc = "Yank buffer name" })
set("n", "<leader>bC", "<CMD>CopyBufferPath<CR>", { silent = true, desc = "Yank buffer path" })
set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace text" })
-- set("n", "<leader>rn", function()
--   return ":IncRename " .. vim.fn.expand("<cword>")
-- end, { expr = true, silent = true, desc = "Rename" })

-- local del = vim.keymap.del
--- Delete keymaps
