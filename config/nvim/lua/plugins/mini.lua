-- Mini plugins
return {
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [']quote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- Examples:
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Create pairs of brackets, quotes, etc.
		require("mini.pairs").setup()

		-- Set Base16 colorscheme
		require("mini.base16").setup({
			palette = {
				base00 = "#000000",
				base01 = "#000000",
				base02 = "#464646",
				base03 = "#525252",
				base04 = "#ABABAB",
				base05 = "#B9B9B9",
				base06 = "#E3E3E3",
				base07 = "#FFFFFF",
				base08 = "#7C7C7C",
				base09 = "#999999",
				base0A = "#A0A0A0",
				base0B = "#FFBE89",
				base0C = "#868686",
				base0D = "#686868",
				base0E = "#747474",
				base0F = "#5E5E5E",
			},
		})
	end,
}
