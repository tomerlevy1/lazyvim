return {
  {
    "nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local opts_win = {
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        experimental = { ghost_text = false }
      }

      -- vim.print(vim.inspect(opts.experimental))
      local new_opts = vim.tbl_extend("force", opts, opts_win)
      -- vim.print(vim.inspect(new_opts))
      return new_opts
    end,
  }
}
