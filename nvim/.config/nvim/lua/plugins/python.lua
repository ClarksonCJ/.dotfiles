return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ruff = {
					cmd_env = { RUFF_TRACE = "messages" },
					init_options = {
						settings = {
							logLevel = "error",
						},
					},
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
			},
			setup = {
				["ruff"] = function()
					LazyVim.lsp.on_attach(function(client, _)
						-- Disable hover in favor of Pyright
						client.server_capabilities.hoverProvider = false
					end, ruff)
				end,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			local servers = { "pyright", "basedpyright", "ruff", "ruff_lsp", ruff, lsp }
			for _, server in ipairs(servers) do
				opts.servers[server] = opts.servers[server] or {}
				opts.servers[server].enabled = server == lsp or server == ruff
			end
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { ensure_installed = { "ninja", "rst" } },
	},
	{
		"nvim-neotest/neotest-python",
	},
}
