return {
  {
    "folke/noice.nvim",
    enabled = false,
    opts = function(_, opts)
      opts.lsp.hover = { silent = true }
      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  }
}
