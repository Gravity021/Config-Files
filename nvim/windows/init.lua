-- Install other config modules
require("options")
require("plugins")
require("keybinds")
require("lsp")

-- Options
configureOpts()

-- Plugins
installPlugins()
vim.cmd([[
	  augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerCompile
	  augroup end
	]])

-- Set colorschemes
--vim.cmd[[silent! colorscheme dracula]]
vim.cmd[[silent! colorscheme tokyonight]]

-- Keybinds
mapKeybinds()

-- LSP
configureLSP()