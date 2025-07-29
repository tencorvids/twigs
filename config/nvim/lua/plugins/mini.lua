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

		require("mini.pairs").setup()

        require("mini.base16").setup({
            palette = {
                base00 = "#000000",
                base01 = "#000000", 
                base02 = "#222222", 
                base03 = "#333333", 
                base04 = "#999999", 
                base05 = "#c1c1c1", 
                base06 = "#999999", 
                base07 = "#c1c1c1", 
                base08 = "#b26c4d", 
                base09 = "#aaaaaa", 
                base0A = "#ff4f00", 
                base0B = "#e5c2b3", 
                base0C = "#aaaaaa", 
                base0D = "#888888", 
                base0E = "#999999", 
                base0F = "#444444",
            },
        })
	end,
}
