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
        experimental = { ghost_text = false },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping(function(fallback)
            local copilot_available, copilot_suggestion = pcall(require, "copilot.suggestion")
            -- Checks if copilot is visible, and accept completion if it is
            -- print(vim.inspect(copilot_suggestion))

            if copilot_available and copilot_suggestion.is_visible() then
              copilot_suggestion.accept()
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
      }

      -- vim.print(vim.inspect(opts.mapping))
      local new_opts = vim.tbl_extend("force", opts, opts_win)
      -- vim.print(vim.inspect(new_opts.keys))
      return new_opts
    end,
  }
}
