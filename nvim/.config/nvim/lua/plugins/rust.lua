return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { ensure_installed = { "rust", "ron" } },
	},
	{
		"mrcjkb/rustaceanvim",
		version = vim.fn.has("nvim-0.10.0") == 0 and "^5" or false,
		ft = { "rust" },
		opts = {
			server = {
				default_settings = {
					-- rust-analyzer language server configuration
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
							loadOutDirsFromCheck = true,
							buildScripts = {
								enable = true,
							},
						},
						-- Add clippy lints for Rust if using rust-analyzer
						checkOnSave = true,
						-- Enable diagnostics if using rust-analyzer
						diagnostics = {
							enable = true,
						},
						procMacro = {
							enable = true,
							ignored = {
								["async-trait"] = { "async_trait" },
								["napi-derive"] = { "napi" },
								["async-recursion"] = { "async_recursion" },
							},
						},
					},
				},
			},
		},
		config = function(_, opts)
			if LazyVim.has("mason.nvim") then
				local package_path = require("mason-registry").get_package("codelldb"):get_install_path()
				local codelldb = package_path .. "/extension/adapter/codelldb"
				local library_path = package_path .. "/extension/lldb/lib/liblldb.dylib"
				local uname = io.popen("uname"):read("*l")
				if uname == "Linux" then
					library_path = package_path .. "/extension/lldb/lib/liblldb.so"
				end
				opts.dap = {
					adapter = require("rustaceanvim.config").get_codelldb_adapter(codelldb, library_path),
				}
			end
			vim.g.rustaceanvim = vim.tbl_deep_extend("keep", vim.g.rustaceanvim or {}, opts or {})
			if vim.fn.executable("rust-analyzer") == 0 then
				LazyVim.error(
					"**rust-analyzer** not found in PATH, please install it.\nhttps://rust-analyzer.github.io/",
					{ title = "rustaceanvim" }
				)
			end
		end,
	},
	{
		"Saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		opts = {
			completion = {
				crates = {
					enabled = true,
				},
			},
			lsp = {
				enabled = true,
				actions = true,
				completion = true,
				hover = true,
			},
		},
	},
}
