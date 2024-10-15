local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.preset('recommended')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})

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
    vim.keymap.set('n', '<leader>vrr', vim.lsp.buf.references, { buffer = bufnr, remap = false, desc = '[R]eferences'})
    vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename, { buffer = bufnr, remap = false, desc = 'Re[n]ame'})
    vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, { buffer = bufnr, remap = false, desc = '[S]ignature [H]elp'})
    end)

lsp_zero.setup()

local lsp_servers = {
    'ansiblels',
    'bashls',
    'codelldb',
    'dockerls',
    'eslint',
    'gopls',
    'graphql',
    'lua_ls',
    'marksman',
    'pylsp',
    'pyright',
    'regal',
    'tsserver',
    'ts_ls',
    'terraformls',
    'vimls',
    'yamlls',
}

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = lsp_servers,
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                            version = "LuaJIT",
                            -- Setup your lua path
                            path = vim.split(package.path, ";"),
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = { "vim", "describe", "it", "before_each", "after_each", "packer_plugins" },
                            -- disable = { "lowercase-global", "undefined-global", "unused-local", "unused-vararg", "trailing-space" },
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = {
                                [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                                [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                            },
                            -- library = vim.api.nvim_get_runtime_file("", true),
                            maxPreload = 2000,
                            preloadFileSize = 50000,
                        },
                        completion = { callSnippet = "Both" },
                        telemetry = { enable = false },
                        hint = {
                            enable = true,
                            arrayIndex = 'Enable',
                            setType = true,
                        },
                    },
                },
            })
        end,
        gopls = function()
            lspconfig.gopls.setup({
                capabilities = capabilities,
                flags = { debounce_text_changes = 200 },
                on_attach = function(client, bufnr)

                    local Remap = require("clarksoncj.keymap")
                    local nnoremap = Remap.nnoremap

                    nnoremap("<leader>gl", ":GoLint<CR>", { desc = "[gl] GoLint" })
                    nnoremap("<leader>gat", ":GoAddTag<CR>", { desc = "[gat] GoAddTag" })
                    nnoremap("<leader>grt", ":GoRmTag<CR>", { desc = "[grt] GoRmTag" })
                    nnoremap("<leader>goc", ":GoCmt<CR>", { desc = "[goc] GoCmt" })
                    nnoremap("<leader>gtt", ":GoTest<CR>", { desc = "[gtt] GoTest" })
                    nnoremap("<leader>gfs", ":GoFillStruct<CR>", { desc = "[gfs] GoFillStruct" })
                    nnoremap("<leader>gfsw", ":GoFillSwitch<CR>", { desc = "[gfsw] GoFillStruct" })
                    nnoremap("<leader>gfi", ":GoIfErr<CR>", { desc = "[gfi] GoIfErr" })
                    nnoremap("<leader>gfp", ":GoFixPlurals<CR>", { desc = "[gfp] GoFixPlurals" })
                    nnoremap("<leader>gdd", ":GoDoc<CR>", { desc = "[gdd] GoDoc" })
                    nnoremap("<leader>gdb", ":GoDebug<CR>", { desc = "[gdb] GoDebug" })
                    nnoremap("<leader>ca", ":GoCodeAction<CR>", { desc = "[ca] GoCodeAction" })
                end,
                settings = {
                    gopls = {
                        completeUnimported = true,
                        buildFlags = { "-tags=debug" },
                        analyses = {
                            unusedparams = true,
                        },
                        staticcheck = true,
                        experimentalPostfixCompletions = true,
                        ["ui.inlayhint.hints"] = {
                            parameterNames = true,
                            assignVariableTypes = true,
                            constantValues = true,
                            rangeVariableTypes = true,
                            compositeLiteralTypes = true,
                            compositeLiteralFields = true,
                            functionTypeParameters = true,
                        },
                    },
                },
            })
        end,
        tsserver = function()
            lspconfig.tsserver.setup({
                capabilities = capabilities,
                settings = {
                    javascript = {
                        inlayHints = {
                            includeInlayEnumMemberValueHints = true,
                            includeInlayFunctionLikeReturnTypeHints = true,
                            includeInlayFunctionParameterTypeHints = true,
                            includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
                            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                            includeInlayPropertyDeclarationTypeHints = true,
                            includeInlayVariableTypeHints = true,
                        },
                    },
                    typescript = {
                        inlayHints = {
                            includeInlayEnumMemberValueHints = true,
                            includeInlayFunctionLikeReturnTypeHints = true,
                            includeInlayFunctionParameterTypeHints = true,
                            includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
                            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                            includeInlayPropertyDeclarationTypeHints = true,
                            includeInlayVariableTypeHints = true,
                        },
                    },
                },
            })
        end,
        pyright = function()
            lspconfig.pyright.setup({
                settings = {
                    python = {
                        analysis = {
                            useLibraryCodeForTypes = true,
                            diagnosticSeverityOverrides = {
                                reportGeneralTypeIssues = "none",
                                reportOptionalMemberAccess = "none",
                                reportOptionalSubscript = "none",
                                reportPrivateImportUsage = "none",
                            },
                            autoImportCompletions = false,
                        },
                        linting = {pylintEnabled = false}
                    },
                },

            })
        end,
        pylsp = function()
            lspconfig.pylsp.setup({
                settings = {
                    pylsp = {
                        builtin = {
                            installExtraArgs = {'flake8', 'pycodestyle', 'pydocstyle', 'pyflakes', 'pylint', 'yapf'},
                        },
                        plugins = {
                            jedi_completion = { enabled = false },
                            rope_completion = { enabled = false },
                            flake8 = { enabled = false },
                            pyflakes = { enabled = false },
                            pycodestyle = {
                                ignore = {'E226', 'E266', 'E302', 'E303', 'E304', 'E305', 'E402', 'C0103', 'W0104', 'W0621', 'W391', 'W503', 'W504'},
                                maxLineLength = 99,
                            },
                        },
                    },
                },
            })
        end,
        regal = function()
            lspconfig.regal.setup({
                capabilities = capabilities,
                settings = {
                    regal = {
                        diagnostics = {
                            enable = true,
                            severity = "error",
                        },
                    },
                },
            })
        end,
    }
})

-- Fix Undefined global 'vim'


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
    })
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'}
vim.opt.shortmess = vim.opt.shortmess + { c = true }

cmp.setup({
  snippet = {
      expand = function(args)
          require('luasnip').lsp_expand(args.body)
      end,
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
  mapping = cmp_mappings,
  sources = cmp.config.sources({
      { name = 'path' },
      { name = 'nvim_lsp', keyword_length = 3 },
      { name = 'nvim_lsp_signature_help' },
      { name = 'nvim_lua', keyword_length = 2 },
      { name = 'buffer', keyword_length = 3 },
      { name = 'luasnip', keyword_length = 2 },
      { name = 'calc' },
  }),
  formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = function(entry, item)
          local menu_icon ={
              nvim_lsp = 'λ',
              luasnip = '⋗',
              buffer = 'Ω',
              path = '🖫',
          }
          item.menu = menu_icon[entry.source.name]
          return item
      end,
  },
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


vim.diagnostic.config({
    virtual_text = true,
})

-- enable Inlay_hints
vim.lsp.inlay_hint.enable()
