local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        -- Formatting
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.rego,
        null_ls.builtins.formatting.ruff,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.yamlfmt,
        null_ls.builtins.formatting.terraform_fmt,
        null_ls.builtins.formatting.fixjson,
        -- diagnostics
        null_ls.builtins.diagnostics.ansiblelint,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.ltrs,
        null_ls.builtins.diagnostics.semgrep.with({
            args = { "--config", "auto", "-q", "--json", "$FILENAME" },
            timeout = 30000,
            method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
        }),
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.tfsec,
        null_ls.builtins.diagnostics.selene,
        -- Code Actions
        null_ls.builtins.code_actions.ltrs,


    },
})
