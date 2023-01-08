local Remap = require("clarksoncj.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap

local nmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end

-- LSP Remaps to stop plugins from clobbering the setup
nnoremap("K", function() vim.lsp.buf.hover() end)
nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
nnoremap("[d", function() vim.diagnostic.goto_next() end)
nnoremap("]d", function() vim.diagnostic.goto_prev() end)
nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
nnoremap("<leader>vco", function() vim.lsp.buf.code_action({
    filter = function(code_action)
        if not code_action or not code_action.data then
            return false
        end

        local data = code_action.data.id
        return string.sub(data, #data - 1, #data) == ":0"
    end,
    apply = true
}) end)
nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)

nnoremap("<leader>ihs", function() require('rust-tools').inlay_hints.set() end)
nnoremap("<leader>ihu", function() require('rust-rools').inlay_hints.unset() end)
