return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"stevearc/conform.nvim",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"j-hui/fidget.nvim",
		"saghen/blink.cmp",
	},

	config = function()
		require("conform").setup({
			formatters_by_ft = {},
		})
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		require("fidget").setup({})
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"codelldb",
				"gopls",
				"ansiblels",
				"bashls",
				"dockerls",
				"eslint",
				"graphql",
				"hadolint",
				"marksman",
				"markdownlint-cli2",
				"markdown-toc",
				"pylsp",
				"pyright",
				"regal",
				"ts_ls",
				"terraformls",
				"vimls",
				"yamlls",
			},
			handlers = {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
				rust_analyzer = { enabled = false },
				lua_ls = function()
					local lspconfig = require("lspconfig")
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
										[vim.fn.expand("$VIMRUNTIME/lua")] = true,
										[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
									},
									-- library = vim.api.nvim_get_runtime_file("", true),
									maxPreload = 2000,
									preloadFileSize = 50000,
								},
								completion = { callSnippet = "Both" },
								telemetry = { enable = false },
								hint = {
									enable = true,
									arrayIndex = "Enable",
									setType = true,
								},
							},
						},
					})
				end,
				gopls = function()
					local lspconfig = require("lspconfig")
					lspconfig.gopls.setup({
						capabilities = capabilities,
						flags = { debounce_text_changes = 200 },
						on_attach = function(client, bufnr)
							vim.keymap.set("n", "<leader>gl", ":GoLint<CR>", { desc = "[gl] GoLint" })
							vim.keymap.set("n", "<leader>gat", ":GoAddTag<CR>", { desc = "[gat] GoAddTag" })
							vim.keymap.set("n", "<leader>grt", ":GoRmTag<CR>", { desc = "[grt] GoRmTag" })
							vim.keymap.set("n", "<leader>goc", ":GoCmt<CR>", { desc = "[goc] GoCmt" })
							vim.keymap.set("n", "<leader>gtt", ":GoTest<CR>", { desc = "[gtt] GoTest" })
							vim.keymap.set("n", "<leader>gfs", ":GoFillStruct<CR>", { desc = "[gfs] GoFillStruct" })
							vim.keymap.set("n", "<leader>gfsw", ":GoFillSwitch<CR>", { desc = "[gfsw] GoFillStruct" })
							vim.keymap.set("n", "<leader>gfi", ":GoIfErr<CR>", { desc = "[gfi] GoIfErr" })
							vim.keymap.set("n", "<leader>gfp", ":GoFixPlurals<CR>", { desc = "[gfp] GoFixPlurals" })
							vim.keymap.set("n", "<leader>gdd", ":GoDoc<CR>", { desc = "[gdd] GoDoc" })
							vim.keymap.set("n", "<leader>gdb", ":GoDebug<CR>", { desc = "[gdb] GoDebug" })
							vim.keymap.set("n", "<leader>ca", ":GoCodeAction<CR>", { desc = "[ca] GoCodeAction" })
						end,
						settings = {
							gopls = {
								gofumpt = true,
								codelenses = {
									gc_details = false,
									generate = true,
									regenerate_cgo = true,
									run_govulncheck = true,
									test = true,
									tidy = true,
									upgrade_dependency = true,
									vendor = true,
								},
								hints = {
									assignVariableTypes = true,
									compositeLiteralFields = true,
									compositeLiteralTypes = true,
									constantValues = true,
									functionTypeParameters = true,
									parameterNames = true,
									rangeVariableTypes = true,
								},
								analyses = {
									fieldalignment = true,
									nilness = true,
									unusedparams = true,
									unusedwrite = true,
									useany = true,
								},
								usePlaceholders = true,
								completeUnimported = true,
								staticcheck = true,
								directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
								semanticTokens = true,
							},
						},
					})
				end,
				ts_ls = function()
					local lspconfig = require("lspconfig")
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
					local lspconfig = require("lspconfig")
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
								linting = { pylintEnabled = false },
							},
						},
					})
				end,
				pylsp = function()
					local lspconfig = require("lspconfig")
					lspconfig.pylsp.setup({
						settings = {
							pylsp = {
								builtin = {
									installExtraArgs = {
										"flake8",
										"pycodestyle",
										"pydocstyle",
										"pyflakes",
										"pylint",
										"yapf",
									},
								},
								plugins = {
									jedi_completion = { enabled = false },
									rope_completion = { enabled = false },
									flake8 = { enabled = false },
									pyflakes = { enabled = false },
									pycodestyle = {
										ignore = {
											"E226",
											"E266",
											"E302",
											"E303",
											"E304",
											"E305",
											"E402",
											"C0103",
											"W0104",
											"W0621",
											"W391",
											"W503",
											"W504",
										},
										maxLineLength = 99,
									},
								},
							},
						},
					})
				end,
				regal = function()
					local lspconfig = require("lspconfig")
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
			},
		})

		vim.diagnostic.config({
			-- update_in_insert = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
		})
	end,
}
