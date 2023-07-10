-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_augroup('AutoFormatting', {})
vim.api.nvim_create_autocmd('BufWritePre', {
    group = 'AutoFormatting',
    callback = function()
        vim.lsp.buf.format({ async = true })
    end,
})
