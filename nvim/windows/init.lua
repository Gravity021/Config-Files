-- Install other config modules
require("options")
require("plugins")
require("keybinds")
require("lsp")

-- Set Neotree to show on startup
vim.api.nvim_create_autocmd({"VimEnter"}, {command = "Neotree action=show"})

-- Set colorschemes
--vim.cmd[[silent! colorscheme dracula]]
vim.cmd[[silent! colorscheme tokyonight]]