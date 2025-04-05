lvim.lsp.installer.setup.automatic_installation = true

-- Server LSP
local servers = {
  "tsserver",
  "gopls",
  "pyright",
  "lua_ls",
  "html",
  "cssls",
  "dockerls",
  "docker_compose_language_service",
  "prismals",
  "yamlls"
}

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return not vim.tbl_contains(servers, server)
end, lvim.lsp.automatic_configuration.skipped_servers or {})

-- Config YAML LSP to Kubernetes
lvim.lsp.automatic_configuration.configs = {
  yamlls = {
    settings = {
      yaml = {
        schemas = {
          kubernetes = "*.yaml",
        },
      },
    },
  },
}

-- Config null-ls to format/linting
-- lvim.lsp.null_ls.setup = {
--   sources = {
--     require("null-ls").builtins.formatting.biome,
--     require("null-ls").builtins.diagnostics.biome,
-- },
-- }
