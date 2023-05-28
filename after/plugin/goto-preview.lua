require('goto-preview').setup()

vim.g.mapleader = " "

vim.keymap.set('n', "<leader>gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>");
vim.keymap.set('n', "<leader>gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>");
vim.keymap.set('n', "<leader>gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>");
vim.keymap.set('n', "<leader>gP", "<cmd>lua require('goto-preview').close_all_win()<CR>");
vim.keymap.set('n', "<leader>gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>");



