require('dap-vscode-js').setup({
    adapters = {'pwa-node', 'node-terminal'}
})

for _, lang in ipairs({"javascript", "typescript"}) do
    require('dap').configurations[lang] = {
        {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}",
        },
        {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            processId = require'dap.utils'.pick_process,
            cwd = "${workspaceFolder}",
        }
    }
end
