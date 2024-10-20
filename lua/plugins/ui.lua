return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.lsp.hover = { silent = true }
      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.win = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }
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
