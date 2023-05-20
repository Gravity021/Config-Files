local packer = require("packer")

-- NeoVim Plugins (using packer)
function installPlugins()
	return packer.startup(function(use)
		use "wbthomason/packer.nvim"
		
		-- Colourschemes
		use "dracula/vim"
		
		-- Tools
		use {'glepnir/dashboard-nvim', event = 'VimEnter', config = function() require('dashboard').setup {} end, requires = {'nvim-tree/nvim-web-devicons'}}
		--use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim", config = function() require("todo-comments").setup {} end}
		--use {'romgrk/barbar.nvim', requires = {
		--	'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		--	'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		--}
		
		-- Utils
		use {"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end}
		use {'nvim-tree/nvim-web-devicons'}
		use "xiyaowong/transparent.nvim"
		
		packer.sync()
		--packer.install()
	end)
end