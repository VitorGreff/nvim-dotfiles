return {
	"nvim-neo-tree/neo-tree.nvim",

	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		vim.opt_local.relativenumber = true

		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})
		vim.keymap.set("n", "<C-b>", ":Neotree close<CR>", {})
	end,
}
