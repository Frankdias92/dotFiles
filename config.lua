-- Configurações gerais do editor
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.tabstop = 2
vim.opt.wrap = true
vim.opt.relativenumber = true -- Habilita número relativo

-- Usa Treesitter para folding
vim.opt.foldmethod = 'expr'

-- Atalhos para navegação entre abas
lvim.keys.normal_mode["<Tab>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<CR>"

-- Plugins extras
lvim.plugins = {
  { "Abstract-IDE/Abstract-cs" },
  { "folke/tokyonight.nvim" },
  { "martinsione/darkplus.nvim" },
  { "NLKNguyen/papercolor-theme" },
  { "andweeb/presence.nvim" },
  { "cocopon/iceberg.vim" },
}

-- Configuração do tema
lvim.colorscheme = "PaperColor"

-- change some colors of Abstract-cs
vim.cmd [[
  highlight String guifg=#FFFFFF  " Altera cor de strings
  highlight Keyword guifg=#ff55ff " Altera cor de palavras-chave (if, for, return, etc.)
  highlight Function guifg=#00aaff " Altera cor de funções
  highlight Identifier guifg=#ff3333 " Altera cor de variáveis e identificadores
]]


-- Configuração do formatador Biome
local formatters = require 'lvim.lsp.null-ls.formatters'
formatters.setup {
  {
    command = "biome",
    filetypes = { "javascript", "typescript", "jsx", "tsx" },
    args = { "format", "--stdin-file-path", "$FILENAME" },
  },
}

-- Configuração do linter Biome

lvim.lsp.installer.setup.ensure_installed = { "biome" }

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "biome" })

require("lvim.lsp.manager").setup("biome", {
  cmd = { "biome", "lsp-proxy" },
  filetypes = { "javascript", "typescript", "jsx", "tsx" },
  root_dir = require("lspconfig").util.root_pattern("biome.json", "package.json", ".git"),
})


-- Ativar formatação automática ao salvar
lvim.format_on_save.enabled = true

-- Configuração do Discord Presence
require("presence"):setup({
  auto_update        = true,
  neovim_image_text  = "Coding with LunarVim!", -- Mensagem ao lado do ícone do Neovim
  main_image         = "neovim",                -- Ícone principal (neovim ou file)
  client_id          = "793271441293967371",    -- ID do app do Discord (não alterar)
  debounce_timeout   = 1,
  enable_line_number = false,                   -- Exibir número da linha atual no Discord
  show_time          = true,
  editing_text       = "Coding in Neovim",
  blacklist          = {}, -- Pastas onde o status não aparece
  buttons            = {
    { label = "GitHub", url = "https://github.com/frankdias92" }
  }
})
