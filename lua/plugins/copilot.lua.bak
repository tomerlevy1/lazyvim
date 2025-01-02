return {
  -- {
  --   "github/copilot.vim",
  --   -- dependencies = {
  --   --   "nvim-cmp" -- this is a dependency of copilot.vim
  --   -- },
  --   build = ":Copilot auth",
  --   name = "copilot",
  --   -- lazy = false,
  --   init = function()
  --     vim.g.copilot_no_tab_map = true
  --   end,
  -- }

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept_word = "<C-h>",
        }
      }
    }
  }
}
