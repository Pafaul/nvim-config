require('lsp-lens').setup({
    enable = true,
    include_declaration = true,
    sections = { -- Enable / Disable specific request
        definition = false,
        references = true,
        implements = false,
    },
})
