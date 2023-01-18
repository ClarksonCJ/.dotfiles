require('go').setup()
require('lspconfig').gopls.setup({
    settings = {
        gopls = {
            gofumpt = true
        }
    }
})
