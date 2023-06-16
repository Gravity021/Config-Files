local bufferline = require("bufferline")
bufferline.setup({ 
    options = {
        style_preset = {
            bufferline.style_preset.no_italic
        },
        offsets = {
            {
                filetype = "neo-tree",
                text = "Neo-tree - File Explorer",
                text_align = "center",
                separator = true
            },
            {
                filetype = "SidebarNvim",
                text = "Sidebar",
                text_align = "center",
                separator = true
            }
        },
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        always_show_bufferline = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        }
    }
})