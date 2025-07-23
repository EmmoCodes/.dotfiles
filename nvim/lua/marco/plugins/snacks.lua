return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		dashboard = {
			preset = {
				--         header = [[
				--  ██████   █████                                ███
				-- ░░██████ ░░███                                ░░░
				--  ░███░███ ░███   ██████   ██████  █████ █████ ████  █████████████
				--  ░███░░███░███  ███░░███ ███░░███░░███ ░░███ ░░███ ░░███░░███░░███
				--  ░███ ░░██████ ░███████ ░███ ░███ ░███  ░███  ░███  ░███ ░███ ░███
				--  ░███  ░░█████ ░███░░░  ░███ ░███ ░░███ ███   ░███  ░███ ░███ ░███
				--  █████  ░░█████░░██████ ░░██████   ░░█████    █████ █████░███ █████
				-- ░░░░░    ░░░░░  ░░░░░░   ░░░░░░     ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░]],
				header = [[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████]],
				keys = {
					-- { icon = " ", desc = "New File", key = "n", action = ":ene | startinsert" },
					{
						section = "recent_files",
						icon = " ",
						title = { "Recent Files", hl = "SnacksDashboardDesc" },
						key = "r",
						indent = 2,
						limit = 3,
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						section = "projects",
						icon = " ",
						title = { "Projects", hl = "SnacksDashboardDesc" },
						key = "p",
						indent = 2,
						limit = 3,
						action = ":lua Snacks.dashboard.pick('projects')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{
						icon = "󰚰 ",
						key = "u",
						desc = "Check Updates",
						action = ":Lazy check",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = "󰅙 ", key = "q", desc = "Quit", padding = { 2, 0 }, action = ":qa" },
				},
			},
			sections = {
				{ section = "header" },
				{
					-- text = { "👋 Welcome, Marco!", hl = "TabLineSel" },
					{ section = "startup" },

					align = "center",
					padding = { 1, 0 },
				},
				{ section = "keys" },
				{ section = "startup" },
			},
		},
	},
}
