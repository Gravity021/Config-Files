require("dashboard").setup ({
    theme = "hyper",
    hide = {
        statusline = false,
        tabline = false,
        winbar = false
    },
    config = {
        header = {
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
            ""
        },
        shortcut = {
            {desc = "󰊳 Update Packer", group = "@property", action = "source $MYVIMRC || PackerSync", key = "p"},
            {desc = "󰊳 Update Mason", group = "@property", action = "MasonUpdate", key = "m"}
        },
        mru = { limit = 8 }
    }
})