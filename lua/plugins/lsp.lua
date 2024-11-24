return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" })
      vim.lsp.handlers["textDocument/signatureHelp"] =
        vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" })
    end,
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        html = {},
        emmet_ls = {},
        cssls = {},
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ui = {
        border = "rounded",
      }

      return opts
    end,
  },

  {
    "williamboman/mason.nvim",
    -- opts = { ensure_installed = { "stylelint" } },
  },
}
