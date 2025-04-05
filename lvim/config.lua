-- Main configs

-- Basic config
require('user.options')

-- Keymaps
require('user.keymaps')

-- LSP config
require('user.lsp')

-- Autocomplet
require('user.completion')

-- Plugins
require('user.plugins')

lvim.colorscheme = "catppuccin"

-- Config NvimTree
lvim.builtin.nvimtree.setup.renderer = {
  indent_markers = {
    enable = true, -- Ativar marcadores de indentação
  },
  icons = {
    show = {
      git = true,    -- Mostrar ícones do Git
      folder = true, -- Mostrar ícones de pasta
      file = true,   -- Mostrar ícones de arquivo
    },
  },
}

lvim.builtin.nvimtree.setup.actions = {
  open_file = {
    quit_on_open = false,
  },
}

lvim.builtin.nvimtree.setup.diagnostics = {
  enable = true,
  show_on_dirs = true,
}
