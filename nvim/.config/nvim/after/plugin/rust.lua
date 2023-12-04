local ih = require("inlay-hints")
local rt = require("rust-tools")

rt.setup({
    tools = {
        autoSetHints = true,
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
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})
