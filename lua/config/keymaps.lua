local set = vim.keymap.set
local util = require("util")

util.cowboy()

set("n", "<C-w>", "<CMD>w<CR>", { silent = true })
set("n", "<leader>y", [["+y]], { silent = true, desc = "Yank to clipboard" })
set("n", "<leader>bc", "<CMD>CopyBufferName<CR>", { silent = true, desc = "Yank buffer name" })
set("n", "<leader>bC", "<CMD>CopyBufferPath<CR>", { silent = true, desc = "Yank buffer path" })

set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, silent = true, desc = "Rename" })

-- local del = vim.keymap.del
--- Delete keymaps
