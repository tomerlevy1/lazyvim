return {
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    opts = {
      warn_no_results = false,
      open_no_results = true,
    },
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
    },
  },
}
