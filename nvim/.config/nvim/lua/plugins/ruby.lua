return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { ensure_installed = { "ruby" } },
	},
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				ruby_lsp = {
					enabled = lsp == "ruby_lsp",
				},
				solargraph = {
					enabled = lsp == "solargraph",
				},
				rubocop = {
					-- If Solargraph and Rubocop are both enabled as an LSP,
					-- diagnostics will be duplicated because Solargraph
					-- already calls Rubocop if it is installed
					enabled = formatter == "rubocop" and lsp ~= "solargraph",
				},
				standardrb = {
					enabled = formatter == "standardrb",
				},
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = { ensure_installed = { "erb-formatter", "erb-lint" } },
	},
	{
		"stevearc/conform.nvim",
		optional = true,
		opts = {
			formatters_by_ft = {
				ruby = { formatter },
				eruby = { "erb_format" },
			},
		},
	},
	{
		"olimorris/neotest-rspec",
	},
}
