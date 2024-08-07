-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			transparent_background = false,
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--
--   config = function()
--     require("tokyonight").setup({
--       -- your configuration comes here
--       -- or leave it empty to use the default settings
--       style = "storm",     -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--       light_style = "day", -- The theme is used when the background is set to light
--       transparent = false, -- Enable this to disable setting the background color
--       terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
--       styles = {
--         -- Style to be applied to different syntax groups
--         -- Value is any valid attr-list value for `:help nvim_set_hl`
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--         -- Background styles. Can be "dark", "transparent" or "normal"
--         sidebars = "dark",           -- style for sidebars, see below
--         floats = "dark",             -- style for floating windows
--       },
--       sidebars = { "qf", "help" },   -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--       day_brightness = 0.3,          -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--       hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--       dim_inactive = false,          -- dims inactive windows
--       lualine_bold = false,          -- When `true`, section headers in the lualine theme will be bold
--
--       --- You can override specific color groups to use other groups or a hex color
--       --- function will be called with a ColorScheme table
--       ---@param colors ColorScheme
--       on_colors = function(colors) end,
--
--       --- You can override specific highlights to use other groups or a hex color
--       --- function will be called with a Highlights and ColorScheme table
--       ---@param highlights Highlights
--       ---@param colors ColorScheme
--       on_highlights = function(highlights, colors) end,
--     })
--   vim.cmd.colorscheme("tokyonight")
--   end,
-- }

-- return {
--   "ellisonleao/gruvbox.nvim",
--   config = function()
--     -- Default options:
--     require("gruvbox").setup({
--       terminal_colors = true, -- add neovim terminal colors
--       undercurl = true,
--       underline = true,
--       bold = false,
--       italic = {
--         strings = true,
--         emphasis = true,
--         comments = true,
--         operators = false,
--         folds = true,
--       },
--       strikethrough = true,
--       invert_selection = false,
--       invert_signs = false,
--       invert_tabline = false,
--       invert_intend_guides = false,
--       inverse = true, -- invert background for search, diffs, statuslines and errors
--       contrast = "", -- can be "hard", "soft" or empty string
--       palette_overrides = {},
--       overrides = {},
--       dim_inactive = false,
--       transparent_mode = true,
--     })
--     vim.cmd("colorscheme gruvbox")
--   end,
-- }

-- return {
-- 	"savq/melange-nvim",
-- 	config = function()
-- 		vim.opt.termguicolors = true
-- 		vim.cmd.colorscheme("melange")
-- 	end,
-- }

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	config = function()
-- -- Default options:
-- require('kanagawa').setup({
--     compile = false,             -- enable compiling the colorscheme
--     undercurl = true,            -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = false,         -- do not set background color
--     dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--     colors = {                   -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--         return {}
--     end,
--     theme = "wave",              -- Load "wave" theme when 'background' option is not set
--     background = {               -- map the value of 'background' option to a theme
--         dark = "wave",           -- try "dragon" !
--         light = "lotus"
--     },
-- })
--
-- -- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")
--   end,
-- }
--

return {
  {
    "datsfilipe/vesper.nvim",
    config = function()
      require("vesper").setup({
        transparent = true, -- Boolean: Sets the background to transparent
        italics = {
          comments = true, -- Boolean: Italicizes comments
          keywords = true, -- Boolean: Italicizes keywords
          functions = true, -- Boolean: Italicizes functions
          strings = true, -- Boolean: Italicizes strings
          variables = true, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {},
      })
      vim.cmd.colorscheme("vesper")
    end,
  },
}
