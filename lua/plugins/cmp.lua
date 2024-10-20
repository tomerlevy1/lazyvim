return {
  {
    "nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts_win = {
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        }
      }

      new_opts = vim.tbl_extend("force", opts, opts_win)

      -- vim.print(vim.inspect(new_opts))
      return new_opts
    end,
  }
}
