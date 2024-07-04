return {
  {
    "nvim-cmp",
    opts = function(_, opts)
      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
        -- Checks if copilot is visible, and accept completion if it is
        local copilot_available, copilot_suggestion = pcall(require, "copilot.suggestion")

        if copilot_available and copilot_suggestion.is_visible() then
          copilot_suggestion.accept()
          -- If it's not, accept the luasnip expansion if it's available
        elseif luasnip.expand_or_locally_jumpable() then
          luasnip.expand_or_jump()
        else
          fallback()
        end
      end, { "i", "s" })

      opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
        if luasnip.locally_jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" })
    end,
  }
}
