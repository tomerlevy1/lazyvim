return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" })
      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help,
        { border = "single" })
    end,
    opts = {
      inlay_hints = {
        enabled = true,
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
    opts = { ensure_installed = { "stylelint", "eslint_d" } },
  }
}
