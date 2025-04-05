lvim.log.level = "warn"

-- Format on save
lvim.format_on_save.enabled = true

-- Disable treesitter (devido aos problemas)
lvim.builtin.treesitter.active = false

-- Disable indent-blankline to solve erros
lvim.builtin.indentlines.active = false

-- Config nvim-tree
lvim.builtin.nvimtree.setup.view.relativenumber = true

-- Config bufferline
lvim.builtin.bufferline.active = true
lvim.builtin.bufferline.options = {
  numbers = "ordinal",
  diagnostics = "nvim_lsp",
  separator_style = "slant",
  show_buffer_close_icons = true,
  show_close_icon = true,
}
