local ih = require("inlay-hints")

require("rust-tools").setup({
    tools = {
        autoSetHints = true,
        hover_with_actions = true,
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
            auto = true,
        },
    },
    server = {
        on_attach = function(client, bufnr)
            ih.on_attach(client, bufnr)
        end,
    },
})
