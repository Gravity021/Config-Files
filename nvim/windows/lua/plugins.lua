local packer = require("packer")

-- NeoVim Plugins (using packer)
function installPlugins()
	return packer.startup(function(use)
		use "wbthomason/packer.nvim"								-- Update packer from packer
		
		-- Colourschemes
		--use "dracula/vim"
		use 'folke/tokyonight.nvim'
		
		-- Tools
		use {'glepnir/dashboard-nvim', 								-- Tool to change the startup interface
			event = 'VimEnter', 
			config = function() require('dashboard').setup {
				theme = "hyper",
				hide = {statusline = false},
				config = {
					shortcut = {
						{desc = '󰊳 Update', group = '@property', action = 'source $MYVIMRC || PackerSync || MasonUpdate', key = 'u'}
					}
				}
			} end, 
			requires = {'nvim-tree/nvim-web-devicons'}
		}
		use {"folke/todo-comments.nvim",							-- Tool for highlighting todo comments
			requires = "nvim-lua/plenary.nvim",
			config = function() require("todo-comments").setup {}
			end
		}
		--use {"folke/trouble.nvim",									-- Tool for 
		--	requires = "nvim-tree/nvim-web-devicons",
		--	config = function() require("trouble").setup {} end
		--}
		use {'nvim-telescope/telescope.nvim', 						-- Tool for 
			branch = '0.1.x',
			requires = {'nvim-lua/plenary.nvim'}
		}
		use {'nvim-lualine/lualine.nvim', 							-- Tool for configuring the statusline
			requires = {'nvim-tree/nvim-web-devicons', opt = true},
			config = function() require('lualine').setup {} end
		}
		use {"williamboman/mason.nvim"}								-- Tool for loading LSPs and DAPs
		use {'williamboman/mason-lspconfig.nvim'}
		
		--use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }		-- Tabnine for code completion
		
		--use {'romgrk/barbar.nvim', 
		--	requires = {
		---		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		--		'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
		--	}
		--}
		
		-- Utils
		use {"windwp/nvim-autopairs", 								-- Utility for adding autopairs to parentheses
			config = function() require("nvim-autopairs").setup {
				ensure_installed = {"pylsp", "lua_ls"}
			} end
		}
		use 'nvim-tree/nvim-web-devicons'							-- Utility for adding icons to text
		use "xiyaowong/transparent.nvim"							-- Utility for making the background transparent
		
		--packer.sync() -- Handled as part of "dashboard-nvim"
	end)
end