return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	config = function()
		-- local highlight = {
		-- 	"RainbowRed",
		-- 	"RainbowYellow",
		-- 	"RainbowBlue",
		-- 	"RainbowOrange",
		-- 	"RainbowGreen",
		-- 	"RainbowViolet",
		-- 	"RainbowCyan",
		-- }
		--
		-- local hooks = require("ibl.hooks")
		--
		-- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
		-- 	vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
		-- 	vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
		-- 	vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
		-- 	vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
		-- 	vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
		-- 	vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
		-- 	vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
		-- end)
		--
		require("ibl").setup({
			-- indent = {
			-- 	highlight = highlight,
			-- },
		})
	end,
}
