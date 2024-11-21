local plugins = {
  "akinsho/bufferline.nvim",
}

local result = {}
for _, value in ipairs(plugins) do
  table.insert(result, {
    value,
    enabled = false
  })
end

return result
