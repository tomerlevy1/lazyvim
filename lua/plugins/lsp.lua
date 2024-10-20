return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts_ui = {
        ui = {
          border = "rounded"
        }
      }

      new_opts = vim.tbl_extend("force", opts, opts_ui)

      -- vim.print(vim.inspect(new_opts))
      return new_opts
    end,
  }
}
