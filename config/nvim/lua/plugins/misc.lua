return {
	-- Theme
	{
		"bettervim/yugen.nvim",
		config = function()
			vim.cmd.colorscheme("yugen")
		end,
	},
	-- Comment
	{
		"numToStr/Comment.nvim",
		enabled = true,
		opts = {},
	},
	-- Discord rich presence
	{
		"vyfor/cord.nvim",
		build = ":Cord update",
		opts = {},
	},
	-- Diagnostics
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},

		vim.keymap.set("n", "<LEADER>xx", "<CMD>Trouble diagnostics toggle<CR>", { desc = "Toggle trouble list" }),
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
        -- stylua: ignore
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "<c-s>", mode = { "c" },           function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        }
,
	},
}
