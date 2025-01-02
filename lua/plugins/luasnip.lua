return {
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip").filetype_extend("java", { "java" })
    end,
  },
}
