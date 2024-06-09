return {
  {
    "stevearc/oil.nvim",
    opts = {
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = { { "-", "<CMD>Oil<CR>", mode = "n", desc = "Open parent directory" } },
  },
}
