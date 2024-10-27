return {
  {
    "stevearc/oil.nvim",
    opts = {
      view_options = {
        show_hidden = true,
      },
      -- keymaps = {
      --   ["<C-p>"] = { "actions.preview", opts = { horizontal = true }, desc = "Open prview" },
      -- }
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "-", "<CMD>Oil<CR>", mode = "n", desc = "Open parent directory" },
    },
  },
}
