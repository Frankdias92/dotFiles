lvim.keys.normal_mode["<leader>e"] = ":NvimTreeToggle<CR>"
lvim.keys.normal_mode["<leader>q"] = ":q<CR>"

-- Telescope
lvim.builtin.which_key.mappings["f"] = {
  name = "Telescope",
  f = { "<cmd>Telescope find_files<CR>", "Find Files" },
  g = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
  b = { "<cmd>Telescope buffers<CR>", "Buffers" },
  h = { "<cmd>Telescope help_tags<CR>", "Help Tags" }
}

-- Tabs navigation
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
-- lvim.keys.normal_mode["<leader>bd"] = ":bd<CR>"

-- Code Format
lvim.keys.normal_mode["<leader>bf"] = ":lua vim.lsp.buf.format()<CR>"
lvim.keys.normal_mode["<leader>f"] = ":lua vim.lsp.buf.format()<CR>"
