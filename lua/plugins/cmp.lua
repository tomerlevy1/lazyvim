-- local cmp = require("cmp")
-- local luasnip = require("luasnip")

-- checking the copilot is playing nice with luasnip
return {
  {
    "nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      print(vim.inspect(opts.mapping))
      opts.mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
          local copilot_available, copilot_suggestion = pcall(require, "copilot.suggestion")
          -- Checks if copilot is visible, and accept completion if it is
          -- print(vim.inspect(copilot_suggestion))

          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          elseif copilot_available and copilot_suggestion.is_visible() then
            copilot_suggestion.accept()
          else
            fallback()
          end
        end, { "i", "s" }),
      })
      return opts
    end,
    -- opts = {
    --   mapping = cmp.mapping.preset.insert({
    --     ["<Tab>"] = cmp.mapping(function(fallback)
    --       local copilot_available, copilot_suggestion = pcall(require, "copilot.suggestion")
    --       -- Checks if copilot is visible, and accept completion if it is
    --       -- print(vim.inspect(copilot_suggestion))
    --
    --       if luasnip.expand_or_locally_jumpable() then
    --         luasnip.expand_or_jump()
    --       elseif copilot_available and copilot_suggestion.is_visible() then
    --         copilot_suggestion.accept()
    --       else
    --         fallback()
    --       end
    --     end, { "i", "s" }),
    --   }),
    -- },
  },
}
