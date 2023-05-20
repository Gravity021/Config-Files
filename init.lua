-- Install other config modules
require("plugins")
require("keybinds")

-- Native NeoVim configurations
local set = vim.opt

set.compatible = false				-- Disable compatibility to old-time vi
set.showmatch = true				-- Show matching
set.ignorecase = true				-- Case insensitive
set.mouse = "v"						-- Paste with middle-click
set.hlsearch = true					-- Highlight search
set.incsearch = true				-- Incremental search
set.tabstop = 4						-- Number of columns occupied by a tab
set.softtabstop = 4					-- See multiple spaces as tabstops so <BS> does the right thing
set.expandtab = true				-- Converts tabs to whitespace
set.shiftwidth = 4					-- Width for autoindents
set.autoindent = true				-- Indent a new line by the same ammount as the line just typed
set.number = true					-- Add line numbers
set.wildmode = longest, list 		-- Get bash-like tab completions
set.cc = "80"						-- Set an 80 column border for good coding style
set.filetype.pluginindent = "on"	-- Allow auto-indenting depending on file type
set.syntax = "on"					-- Enable syntax highlighting
set.mouse = "a"						-- Enable mouse click
set.clipboard = unnamedplus			-- Use system clipboard
set.filetype.plugin = "on"			-- 
set.cursorline = true				-- Highlight the current cursor line
set.ttyfast = true					-- Speed up scrolling

set.splitright = true				-- Open new split panes right
set.splitbelow = true				-- Open new split panes below

set.termguicolors = true			-- Keep consistant colouring

-- Plugins
--vim.cmd([[
--	  augroup packer_user_config
--		autocmd!
--		autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--	  augroup end
--	]])
installPlugins()

-- Set colorschemes
vim.cmd[[silent! colorscheme dracula]]

-- Keybinds
mapKeybinds()