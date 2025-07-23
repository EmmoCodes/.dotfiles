return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"ray-x/lsp_signature.nvim",
		"nvim-telescope/telescope.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
	},
	ft = { "go", "lua", "ts", "js" },
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lsp_signature = require("lsp_signature")
		-- local telescope_builtin = require("telescope.builtin")
		local on_attach = function(client, bufnr)
			vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
			if client.server_capabilities.inlayHintProvider then
				vim.lsp.inlay_hint.enable(true)
			end
			lsp_signature.on_attach({}, bufnr)
		end

		local lspconfig = require("lspconfig")
		lspconfig.gopls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					telemetry = {
						enable = false,
					},
				},
			},
		})

		require("mason").setup()
		require("mason-lspconfig").setup()
	end,
}
