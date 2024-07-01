return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = {
        javascript = { "prettierd" },
        json = { "prettierd" },
      }
    end,
  },
}
