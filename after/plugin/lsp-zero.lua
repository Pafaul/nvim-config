local lsp = require('lsp-zero').preset("recommended")

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
	"rust_analyzer",
	"tsserver",
	"eslint",
})

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig');
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- lspconfig.solidity.setup({
--	cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
--	filetypes = { "solidity" },
--	root_dir = require("lspconfig.util").find_git_ancestor,
--	single_file_support = true,
-- })

lsp.setup()
