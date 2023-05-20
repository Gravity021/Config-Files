-- Keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function mapKeybinds()
	map("n", ":s", ":source $MYVIMRC") 	-- Fast reload of the config file
	map("n", ":Q", ":q!")				-- Exit without saving
	map("n", ":a<CR>", ":lua print('hello!')")
end