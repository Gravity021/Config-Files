require("telescope").setup({
    extensions = {
        file_browser = {
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true
        }
    }
})
require("telescope").load_extension("file_browser")