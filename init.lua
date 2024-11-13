-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require('luasnip').filetype_extend("typescript", { "javascript" })
