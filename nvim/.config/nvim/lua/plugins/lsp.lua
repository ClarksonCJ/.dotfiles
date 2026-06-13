return {
	{
		"mason-org/mason.nvim",
		cmd = "Mason",
		keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
		build = ":MasonUpdate",
		opts_extend = { "ensure_installed" },
		opts = {
			ensure_installed = {
				"ansible-language-server",
				"bash-language-server",
				"css-lsp",
				"dockerfile-language-server",
				"eslint-lsp",
				"gopls",
				"graphql-language-service-cli",
				"lua-language-server",
				"luacheck",
				"marksman",
				"python-lsp-server",
				"pyright",
				"regal",
				"selene",
				"shellcheck",
				"shfmt",
				"stylua",
				"shfmt",
				"tailwindcss-language-server",
				"typescript-language-server",
				"terraform-ls",
				"vim-language-server",
				"yaml-language-server",
				"zls",
			},
		},
		---@param opts MasonSettings | {ensure_installed: string[]}
		config = function(_, opts)
			require("mason").setup(opts)
			local mr = require("mason-registry")
			mr:on("package:install:success", function()
				vim.defer_fn(function()
					-- trigger FileType event to possibly load this newly installed LSP server
					require("lazy.core.handler.event").trigger({
						event = "FileType",
						buf = vim.api.nvim_get_current_buf(),
					})
				end, 100)
			end)

			mr.refresh(function()
				for _, tool in ipairs(opts.ensure_installed) do
					local p = mr.get_package(tool)
					if not p:is_installed() then
						p:install()
					end
				end
			end)
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = "LazyFile",
		dependencies = {
			"mason.nvim",
			{ "mason-org/mason-lspconfig.nvim", config = function() end },
		},
		opts = function()
			---@class PluginLspOpts
			local ret = {
				-- options for vim.diagnostic.config()
				---@type vim.diagnostic.Opts
				diagnostics = {
					underline = true,
					update_in_insert = false,
					virtual_text = {
						spacing = 4,
						source = "if_many",
						prefix = "●",
						-- this will set set the prefix to a function that returns the diagnostics icon based on the severity
						-- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
						-- prefix = "icons",
					},
					severity_sort = true,
					signs = {
						text = {
							[vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
							[vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
							[vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
							[vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
						},
					},
				},
				-- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
				-- Be aware that you also will need to properly configure your LSP server to
				-- provide the inlay hints.
				inlay_hints = {
					enabled = true,
					exclude = { "vue" }, -- filetypes for which you don't want to enable inlay hints
				},
				-- Enable this to enable the builtin LSP code lenses on Neovim >= 0.10.0
				-- Be aware that you also will need to properly configure your LSP server to
				-- provide the code lenses.
				codelens = {
					enabled = false,
				},
				folds = {
					enabled = true,
				},
				-- add any global capabilities here
				capabilities = {
					workspace = {
						fileOperations = {
							didRename = true,
							willRename = true,
						},
					},
				},
				-- options for vim.lsp.buf.format
				-- `bufnr` and `filter` is handled by the LazyVim formatter,
				-- but can be also overridden when specified
				format = {
					formatting_options = nil,
					timeout_ms = nil,
				},
				-- LSP Server Settings
				---@type lspconfig.options
				servers = {
					gopls = {
						keys = {
							{ "<leader>gl", ":GoLint<CR>", desc = "[gl] GoLint" },
							{ "<leader>gat", ":GoAddTag<CR>", desc = "[gat] GoAddTag" },
							{ "<leader>grt", ":GoRmTag<CR>", desc = "[grt] GoRmTag" },
							{ "<leader>goc", ":GoCmt<CR>", desc = "[goc] GoCmt" },
							{ "<leader>gtt", ":GoTest<CR>", desc = "[gtt] GoTest" },
							{ "<leader>gfs", ":GoFillStruct<CR>", desc = "[gfs] GoFillStruct" },
							{ "<leader>gfsw", ":GoFillSwitch<CR>", desc = "[gfsw] GoFillStruct" },
							{ "<leader>gfi", ":GoIfErr<CR>", desc = "[gfi] GoIfErr" },
							{ "<leader>gfp", ":GoFixPlurals<CR>", desc = "[gfp] GoFixPlurals" },
							{ "<leader>gdd", ":GoDoc<CR>", desc = "[gdd] GoDoc" },
							{ "<leader>gdb", ":GoDebug<CR>", desc = "[gdb] GoDebug" },
							{ "<leader>ca", ":GoCodeAction<CR>", desc = "[ca] GoCodeAction" },
						},
					},
					ruff = {
						keys = {
							{
								"<leader>co",
								LazyVim.lsp.action["source.organizeImports"],
								desc = "Organize Imports",
							},
						},
					},
					ruff_lsp = {
						keys = {
							{
								"<leader>co",
								LazyVim.lsp.action["source.organizeImports"],
								desc = "Organize Imports",
							},
						},
					},

					lua_ls = {
						-- mason = false, -- set to false if you don't want this server to be installed with mason
						-- Use this to add any additional keymaps
						-- for specific lsp servers
						-- ---@type LazyKeysSpec[]
						-- keys = {},
						settings = {
							Lua = {
								workspace = {
									checkThirdParty = false,
								},
								codeLens = {
									enable = true,
								},
								completion = {
									callSnippet = "Replace",
								},
								doc = {
									privateName = { "^_" },
								},
								hint = {
									enable = true,
									setType = false,
									paramType = true,
									paramName = "Disable",
									semicolon = "Disable",
									arrayIndex = "Disable",
								},
							},
						},
					},
					ts_ls = {
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
					},
					pyright = {
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
					},
					pylsp = {
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
					},
				},
				-- you can do any additional lsp server setup here
				-- return true if you don't want this server to be setup with lspconfig
				---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
				setup = {
					-- example to setup with typescript.nvim
					-- tsserver = function(_, opts)
					--   require("typescript").setup({ server = opts })
					--   return true
					-- end,
					-- Specify * to use this function as a fallback for any server
					-- ["*"] = function(server, opts) end,
				},
			}
			return ret
		end,
		---@param opts PluginLspOpts
		config = vim.schedule_wrap(function(_, opts)
			-- setup autoformat
			LazyVim.format.register(LazyVim.lsp.formatter())

			-- setup keymaps
			for server, server_opts in pairs(opts.servers) do
				if type(server_opts) == "table" and server_opts.keys then
					require("lazyvim.plugins.lsp.keymaps").set(
						{ name = server ~= "*" and server or nil },
						server_opts.keys
					)
				end
			end

			-- inlay hints
			if opts.inlay_hints.enabled then
				Snacks.util.lsp.on({ method = "textDocument/inlayHint" }, function(buffer)
					if
						vim.api.nvim_buf_is_valid(buffer)
						and vim.bo[buffer].buftype == ""
						and not vim.tbl_contains(opts.inlay_hints.exclude, vim.bo[buffer].filetype)
					then
						vim.lsp.inlay_hint.enable(true, { bufnr = buffer })
					end
				end)
			end

			-- folds
			if opts.folds.enabled then
				Snacks.util.lsp.on({ method = "textDocument/foldingRange" }, function()
					if LazyVim.set_default("foldmethod", "expr") then
						LazyVim.set_default("foldexpr", "v:lua.vim.lsp.foldexpr()")
					end
				end)
			end

			-- code lens
			if opts.codelens.enabled and vim.lsp.codelens then
				Snacks.util.lsp.on({ method = "textDocument/codeLens" }, function(buffer)
					vim.lsp.codelens.refresh()
					vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
						buffer = buffer,
						callback = vim.lsp.codelens.refresh,
					})
				end)
			end

			-- diagnostics
			if type(opts.diagnostics.virtual_text) == "table" and opts.diagnostics.virtual_text.prefix == "icons" then
				opts.diagnostics.virtual_text.prefix = function(diagnostic)
					local icons = LazyVim.config.icons.diagnostics
					for d, icon in pairs(icons) do
						if diagnostic.severity == vim.diagnostic.severity[d:upper()] then
							return icon
						end
					end
					return "●"
				end
			end
			vim.diagnostic.config(vim.deepcopy(opts.diagnostics))

			if opts.capabilities then
				vim.lsp.config("*", { capabilities = opts.capabilities })
			end

			-- get all the servers that are available through mason-lspconfig
			local have_mason = LazyVim.has("mason-lspconfig.nvim")
			local mason_all = have_mason
					and vim.tbl_keys(require("mason-lspconfig.mappings").get_mason_map().lspconfig_to_package)
				or {} --[[ @as string[] ]]
			local mason_exclude = {} ---@type string[]

			---@return boolean? exclude automatic setup
			local function configure(server)
				local sopts = opts.servers[server]
				sopts = sopts == true and {} or (not sopts) and { enabled = false } or sopts --[[@as lazyvim.lsp.Config]]

				if sopts.enabled == false then
					mason_exclude[#mason_exclude + 1] = server
					return
				end

				local use_mason = sopts.mason ~= false and vim.tbl_contains(mason_all, server)
				local setup = opts.setup[server] or opts.setup["*"]
				if setup and setup(server, sopts) then
					mason_exclude[#mason_exclude + 1] = server
				else
					vim.lsp.config(server, sopts) -- configure the server
					if not use_mason then
						vim.lsp.enable(server)
					end
				end
				return use_mason
			end

			local install = vim.tbl_filter(configure, vim.tbl_keys(opts.servers))
			if have_mason then
				require("mason-lspconfig").setup({
					ensure_installed = vim.list_extend(
						install,
						LazyVim.opts("mason-lspconfig.nvim").ensure_installed or {}
					),
					automatic_enable = { exclude = mason_exclude },
				})
			end
		end),
	},
	{
		"mason.nvim",
		{ "mason-org/mason-lspconfig.nvim", config = function() end },
	},
}
