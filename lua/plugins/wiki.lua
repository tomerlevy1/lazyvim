return {
  {
    "vimwiki/vimwiki",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    init = function()
      vim.g.vimwiki_map_prefix = "<leader>e"
      vim.g.vimwiki_list = {
        {
          -- path = "~/vimwiki/",
          -- syntax = "markdown",
          -- ext = "md",
          auto_tags = 1,
        },
      }
    end,
    config = function()
      vim.keymap.set("n", "<C-G>", "<Plug>VimwikiToggleListItem", { silent = true })
      vim.keymap.set("n", "<Leader>ef", "<CMD>Telescope vw<CR>", { silent = true, desc = "Find file in wiki" })
      vim.keymap.set("n", "<Leader>ee", function()
        local tagName = vim.fn.input("tag name: ")
        vim.cmd("VimwikiSearchTags " .. tagName)
        vim.cmd("Trouble loclist toggle")
      end, { silent = true, desc = "Search tags in wiki" })
      -- vim.keymap.set("n", "<Leader>ee", "[[:VimwikiSearchTags<Space> input(\"tag name\")]]", { silent = true, desc = "Search tags in wiki" })
      vim.keymap.set("n", "<Leader>e<Space>d", ':r!date "+\\%F"<CR>', { silent = true, desc = "Insert date" })
    end,
  },

  {
    "ElPiloto/telescope-vimwiki.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("vimwiki")
    end,
  },
}
