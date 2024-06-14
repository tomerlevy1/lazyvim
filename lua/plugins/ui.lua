return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }
    end,
  },

  -- {
  --   "b0o/incline.nvim",
  --   config = function()
  --     require("incline").setup()
  --   end,
  --   -- Optional: Lazy load Incline
  --   event = "VeryLazy",
  -- },
}
