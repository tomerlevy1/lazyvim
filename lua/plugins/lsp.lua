return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        html = {},
        emmet_ls = {},
        cssls = {},
      },
    }
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      local opts_ui = {
        ui = {
          border = "rounded"
        }
      }

      local new_opts = vim.tbl_extend("force", opts, opts_ui)

      -- vim.print(vim.inspect(new_opts))
      return new_opts
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "stylelint" } },
  }
}
