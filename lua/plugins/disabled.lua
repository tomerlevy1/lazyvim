local plugins = {
  "akinsho/bufferline.nvim",
  -- "nvim-neo-tree/neo-tree.nvim",
  "nvimdev/dashboard-nvim",
}

local result = {}
for _, value in ipairs(plugins) do
  table.insert(result, {
    value,
    enabled = false
  })
end

return result
