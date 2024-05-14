--[[
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
--]]

return {
	"savq/melange-nvim",
	config = function()
		vim.opt.termguicolors = true
		vim.cmd.colorscheme("melange")
	end,
}
