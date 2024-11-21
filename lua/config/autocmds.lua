vim.api.nvim_create_user_command("CopyBufferPath", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("CopyBufferName", function()
  local path = vim.fn.expand("%:t")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

local copilot_on = true
vim.api.nvim_create_user_command("CopilotToggle", function()
  if copilot_on then
    vim.cmd("Copilot disable")
    print("Copilot OFF")
  else
    vim.cmd("Copilot enable")
    print("Copilot ON")
  end
  copilot_on = not copilot_on
end, { nargs = 0 })

local diffview_on = false
vim.api.nvim_create_user_command("DiffviewToggle", function()
  if diffview_on then
    vim.cmd("DiffviewClose")
  else
    vim.cmd("DiffviewOpen")
  end
  diffview_on = not diffview_on
end, { nargs = 0 })
