require('neodev').setup({
    library = { plugins = { "nvim-dap-ui" }, types = true },
});

local lsp = require('lsp-zero').preset("recommended")

lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
    "rust_analyzer",
    "tsserver",
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig');
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lspconfig.solidity.setup({
    cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
    filetypes = { "solidity" },
    root_dir = require("lspconfig.util").find_git_ancestor,
    single_file_support = true,
})

lsp.setup()
