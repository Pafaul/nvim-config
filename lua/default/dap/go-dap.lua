require('dap-go').setup()

require('dap').configurations.go = {
    {
        type = "go",
        name = "Debug",
        request = "launch",
        program = "${file}",
    },
    {
        type = "go",
        name = "Debug test",
        request = "launch",
        mode = "test",
        program = "${file}",
    },
    {
        type = "go",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}",
    },
}
