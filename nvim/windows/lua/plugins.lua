local packer = require("packer")

local function tabnine_build_path()
  if vim.loop.os_uname().sysname == "Windows_NT" then
    return "pwsh.exe -file .\\dl_binaries.ps1"
  else
    return "./dl_binaries.sh"
  end
end

-- NeoVim Plugins (using packer)
return packer.startup(function(use)
	use {"wbthomason/packer.nvim"}								-- Update packer from packer
	
	-- Colourschemes
	--use "dracula/vim"
	use {"folke/tokyonight.nvim"}
	
	-- Tools
	use {"glepnir/dashboard-nvim", 								-- Tool to change the startup interface
		event = "VimEnter", 
		config = function() require("plugins.tools.dashboard-config") end, 
		requires = {"nvim-tree/nvim-web-devicons"}
	}
	use {"nvim-telescope/telescope.nvim", 						-- Tool for easy searching
		branch = "0.1.x",
		requires = {"nvim-lua/plenary.nvim"},
		config = function() require("plugins.tools.telescope-config") end
	}
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	use {"nvim-lualine/lualine.nvim", 							-- Tool for configuring the statusline
		requires = {"nvim-tree/nvim-web-devicons", opt = true},
		config = function() require("plugins.tools.lualine-config") end
	}
	use {"codota/tabnine-nvim", 								-- Tabnine for code completion
		run = tabnine_build_path(),
		config = function() require("plugins.tools.tabnine-nvim-config") end
	}
	use {'akinsho/bufferline.nvim', tag = "*", 
		requires = {'nvim-tree/nvim-web-devicons'},
		config = function() require("plugins.tools.bufferline-config") end
	}
	
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	use {"nvim-neo-tree/neo-tree.nvim",							-- Tool for filesystem viewer
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"nvim-neo-tree/example-source"
		},
		config = function() require("plugins.tools.neo-tree-config") end
	}
	
	--use {"gennaro-tedesco/nvim-possession",						-- Tool for session management
	--	requires = {"ibhagwan/fzf-lua"},
	--	config = function() require("nvim-possession").setup({}) end
	--}
	--use {"folke/todo-comments.nvim",							-- Tool for highlighting todo comments
	--	requires = "nvim-lua/plenary.nvim",
	--	config = function() require("todo-comments").setup {}
	--	end
	--}
	
	-- LSPs and DAPs
	-- Setup handled in "./lsp.lua"
	use {"nvim-lua/lsp-status.nvim"}
	use {"williamboman/mason.nvim"}
	use {"williamboman/mason-lspconfig.nvim"}
	
	-- Utils
	use {"windwp/nvim-autopairs", 								-- Utility for adding autopairs to parentheses
		config = function() require("plugins.utils.nvim-autopairs") end
	}
	use "nvim-tree/nvim-web-devicons"							-- Utility for adding icons to text
	use "xiyaowong/transparent.nvim"							-- Utility for making the background transparent
	use {"m4xshen/smartcolumn.nvim",							-- Utility for auto-hiding the colourcolumn when not needed
		config = function() require("plugins.utils.smartcolumn-config") end
	}
	use {"sudormrfbin/cheatsheet.nvim",							-- Utility for easy searching docs
		requires = {
			{"nvim-telescope/telescope.nvim"},
			{"nvim-lua/popup.nvim"},
			{"nvim-lua/plenary.nvim"}
		}
	}
	
	--packer.sync() -- Handled as part of "dashboard-nvim"
end)