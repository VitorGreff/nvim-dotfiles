return {
	"prettier/vim-prettier",
	ft = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"css",
		"less",
		"scss",
		"graphql",
		"markdown",
		"vue",
		"svelte",
		"yaml",
		"html",
		"json",
	},
	build = "yarn install",
	config = function()
		vim.g["prettier#autoformat"] = 0
		vim.g["prettier#autoformat_require_pragma"] = 0
	end,
}
