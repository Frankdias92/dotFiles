-- Your custom plugins
lvim.plugins = {
  -- Themes
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim",      name = "catppuccin" },
  { "morhetz/gruvbox" },

  -- Utilities
  { "tpope/vim-surround" },
  { "tpope/vim-commentary" },

  -- LuaSnip for better snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end
  },

  -- Explicitly disable indent-blankline to prevent errors
  { "lukas-reineke/indent-blankline.nvim", enabled = false },


  { "nvimtools/none-ls.nvim" }

}

-- Configure auto completion
lvim.builtin.cmp.sources = {
  { name = "nvim_lsp" },
  { name = "luasnip" },
  { name = "buffer" },
  { name = "path" },
  { name = "nvim_lua" },
}

-- Configure which keys trigger completion
lvim.builtin.cmp.mapping["<C-Space>"] = require("cmp").mapping.complete()
