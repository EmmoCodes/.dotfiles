return {
	"azorng/goose.nvim",

	keys = {
		{ "<leader>gg", ":Goose" },
	},
	ft = { "go", "lua", "ts", "js", "markdown", "txt", "csv", "yaml" },

	config = function()
		require("goose").setup({
			ui = {
				window_width = 0.4, -- Width as percentage of editor width
				input_height = 0.1, -- Input height as percentage of window height
				fullscreen = false, -- Start in fullscreen mode (default: false)
				layout = "right", -- Options: "center" or "right"
				floating_height = 0.9, -- Height as percentage of editor height for "center" layout
				display_model = true, -- Display model name on top winbar
				display_goose_mode = true, -- Display mode on top winbar: auto|chat
			},
		})
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				anti_conceal = { enabled = false },
			},
		},
	},
}
