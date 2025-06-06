return {
	"mason-org/mason.nvim",
	version = "1.11.0",
	dependencies = { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
	-- dependencies = {
	-- 	"williamboman/mason-lspconfig.nvim",
	-- 	"WhoIsSethDaniel/mason-tool-installer.nvim",
	-- },
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"emmet_ls",
				"gopls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d",
				-- "isort", -- python formatter
				-- "black", -- python formatter
			},
		})
	end,
}
