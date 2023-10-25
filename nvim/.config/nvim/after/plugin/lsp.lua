local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.preset('recommended')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'eslint',
        'lua_ls',
        'rust_analyzer',
        'bashls',
        'gopls',
        'graphql',
        'marksman',
        'ocamllsp',
        'jedi_language_server',
        'terraformls',
        'vimls',
        'yamlls',
        'ansiblels',
        'dockerls'},
    handlers = {
        lsp_zero.default_setup,
    }
})

-- Fix Undefined global 'vim'
lsp_zero.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

cmp.setup({
  mapping = cmp_mappings,
  sources = {
      { name = 'path' },
      { name = 'nvim_lsp', keyword_length = 1 },
      { name = 'buffer', keyword_length = 3 },
      { name = 'luasnip', keyword_length = 2 },
  }
})

lsp_zero.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp_zero.on_attach(function(client, bufnr)
  if client.name == 'eslint' then
      vim.cmd.LspStop('eslint')
      return
  end

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr, remap = false, desc = '[H]over'})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, remap = false, desc = '[G]oto [D]efinition'})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { buffer = bufnr, remap = false, desc = '[G]oto [R]eferences'})
  vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { buffer = bufnr, remap = false, desc = '[G]oto [I]mplementation'})
  vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float, { buffer = bufnr, remap = false, desc = '[O]pen Diag Float'})
  vim.keymap.set('n', '[d', vim.diagnostic.goto_next, { buffer = bufnr, remap = false, desc = '[G]oto [N]ext Message'})
  vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, { buffer = bufnr, remap = false, desc = '[G]oto [P]rev Message'})
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { buffer = bufnr, remap = false, desc = 'Type [D]efinition'})
  vim.keymap.set('n', '<leader>ds', function() require('telescope.builtin').lsp_document_symbols(require('telescope.themes').get_dropdown({})) end, { buffer = bufnr, remap = false, desc = '[D]ocument [S]ymbols'})
  vim.keymap.set('n', '<leader>ws', function() require('telescope.builtin').lsp_dynamic_workspace_symbols(require('telescope.themes').get_dropdown({})) end, { buffer = bufnr, remap = false, desc = '[W]orkspace [S]ymbols'})
  vim.keymap.set('n', '<leader>ca', function()
      vim.lsp.buf.code_action({
      filter = function(code_action)
          if not code_action or not code_action.data then
              return false
          end

          local data = code_action.data.id
          return string.sub(data, #data - 1, #data) == ':0'
      end,
      apply = true
  }) end, { buffer = bufnr, remap = false, desc = '[C]ode [A]ctions'})
  vim.keymap.set('n', '<leader>vrr', vim.lsp.buf.references, { buffer = bufnr, remap = false, desc = '[R]eferences'})
  vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename, { buffer = bufnr, remap = false, desc = 'Re[n]ame'})
  vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, { buffer = bufnr, remap = false, desc = '[S]ignature [H]elp'})
end)

lsp_zero.setup()

vim.diagnostic.config({
    virtual_text = true,
})

require('lspconfig').gopls.setup({
    settings = {
        gopls = {
            gofumpt = true
        }
    }
})
