local Remap = require("clarksoncj.keymap")
local nnoremap = Remap.nnoremap
local bufnr = vim.api.nvim_get_current_buf()

nnoremap("<leader>ca", function()
    vim.cmd.RustLsp('codeAction')
end, { desc = "[ca] Code Action" })

nnoremap("K", function()
    vim.cmd.RustLsp('hover', 'actions')
end, { desc = "Hover" })






