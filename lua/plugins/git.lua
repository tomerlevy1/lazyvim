return {
  {
    "tpope/vim-fugitive",
  },

  {
    "sindrets/diffview.nvim",
    lazy = false,
    opts = {
      file_panel = {
        listing_style = "list",
      },
    },
    keys = {
      {
        "<leader>gvt",
        "<cmd>DiffviewToggle<cr>",
        desc = "Toggle DiffView",
      },
      {
        "<leader>gvc",
        "<cmd>DiffviewClose<cr>",
        desc = "DiffviewClose",
      },
      {
        "<leader>gvh",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "DiffviewFileHistory (current file)",
      },
      {
        "<leader>gvH",
        "<cmd>DiffviewFileHistory<cr>",
        desc = "DiffviewFileHistory",
      },
    },
  },
}
