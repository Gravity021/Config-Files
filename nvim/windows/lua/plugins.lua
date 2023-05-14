-- NeoVim Plugins (using packer)
function installPlugins()
	return require("packer").startup(function(use)
		use "wbthomason/packer.nvim"
		
		-- Colourschemes
		use "dracula/vim"
		
		-- Tools
		use "mhinz/vim-startify"
		
		-- Utils
		use "ryanoasis/vim-devicons"
		
		require("packer").sync()
	end)
end