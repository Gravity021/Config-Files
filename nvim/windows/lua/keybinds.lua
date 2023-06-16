-- Keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map("n", ":s", ":source $MYVIMRC", {silent = true}) 	    -- Fast reload of the config file
map("n", ":Q", ":q!")				                        -- Exit without saving

-- map("n", ":sl", function() require("nvim-possession").list() end)

map("n", ":files", ":Telescope file_browser", {silent = true})
--map("c", ":files", ":Telescope file_browser", {silent = true})
