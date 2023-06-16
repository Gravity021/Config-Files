-- Native NeoVim configurations
local set = vim.opt

-- Disable Netrw for Nvim-Tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Misc
set.compatible = false				-- Disable compatibility to old-time vi

set.clipboard = {"unnamed", "unnamedplus"}			-- Use system clipboard
set.mouse = "a"						-- Enable mouse click
--set.mouse = "v"						-- Paste with middle-click

-- Tab
set.tabstop = 4						-- Number of columns occupied by a tab
set.softtabstop = 4					-- See multiple spaces as tabstops so <BS> does the right thing
set.expandtab = true				-- Converts tabs to whitespace
set.shiftwidth = 4					-- Width for autoindents
set.autoindent = true				-- Indent a new line by the same ammount as the line just typed

-- Searching
set.incsearch = true				-- Incremental search
set.hlsearch = true					-- Highlight search
set.ignorecase = true				-- Case insensitive
vim.opt.smartcase = true            -- Override search case insensitivity if an uppercase is entered

-- UI
set.wrap = false					-- Enable line-wrapping for text
set.number = true					-- Add line numbers
set.cursorline = true				-- Highlight the current cursor line
set.cc = "80"						-- Set an 80 column border for good coding style
set.wildmode = longest, list 		-- Get bash-like tab completions
set.syntax = "on"					-- Enable syntax highlighting

set.showmatch = true				-- Show matching bracket
set.filetype.pluginindent = "on"	-- Allow auto-indenting depending on file type
set.filetype.plugin = "on"			-- Enable loading plugins for filetypes
set.ttyfast = true					-- Speed up scrolling

set.splitright = true				-- Open new split panes right
set.splitbelow = true				-- Open new split panes below

set.termguicolors = true			-- Keep consistant colouring with the terminal