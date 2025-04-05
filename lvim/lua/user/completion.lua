lvim.builtin.cmp.sources = {
  { name = "nvim_lsp" },
  { name = "luasnip" },
  { name = "buffer" },
  { name = "path" },
  { name = "nvim_lua" },
}

-- Which keys enable autocomplet
lvim.builtin.cmp.mapping["<C-Space>"] = require("cmp").mapping.complete()
