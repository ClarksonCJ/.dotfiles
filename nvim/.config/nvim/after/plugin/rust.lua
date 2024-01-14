local capabilities = require('cmp_nvim_lsp').default_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

require("rust-tools").setup({
  tools = {
    autoSetHints = true,
    runnables = { use_telescope = true },
    inlay_hints = {
      show_parameter_hints = true,
      highlight = "Whitespace",
    },
    hover_actions = { auto_focus = true },
    executor = {
      execute_command = function(command, args)
        vim.cmd("T " .. require("rust-tools.utils.utils").make_command_from_args(command, args))
      end,
    },
  },
  server = {
    on_attach = function(c, b)
      vim.lsp.inlay_hint.enable(b, true)
    end,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 200,
    },
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
        },
        completion = {
          autoimport = {
            enable = true,
          },
        },
      },
    },
  },
})
