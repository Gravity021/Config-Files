require("neo-tree").setup({
    sources = {
      "filesystem",
      -- "buffers",
      "git_status",
      "document_symbols",
      "example"
    },
    auto_clean_after_session_restore = true,
    close_if_last_window = true,
    source_selector = {
      winbar = true,
      statusline = true,
    },
      -- default_component_configs = {
        -- indent = {
          -- indent_size = 2,
          -- padding = 0,
          -- with_markers = true,
          -- indent_marker = "│",
          -- last_indent_marker = "└",
          -- highlight = "NeoTreeIndentMarker",
          -- with_expanders = false,
          -- expander_collapsed = "",
          -- expander_expanded = "",
          -- expander_highlight = "NeoTreeExpander",
        -- },
        -- icon = {
          -- folder_closed = "",
          -- folder_open = "",
          -- folder_empty = "",
          -- default = "",
        -- },
        -- name = {
          -- trailing_slash = false,
          -- use_git_status_colors = true,
        -- },
        -- git_status = {
          -- symbols = {
            -- added = "",
            -- deleted = "",
            -- modified = "",
            -- renamed = "➜",
            -- untracked = "★",
            -- ignored = "◌",
            -- unstaged = "✗",
            -- staged = "✓",
            -- conflict = "",
          -- },
        -- },
      -- },
      window = {
        position = "left",
        width = 30,
      },
      buffers = {
        follow_current_file = true,
        window = {
          mappings = {
            ["bd"] = "buffer_delete",
          },
        },
      },
      git_status = {
        window = {
         -- position = "left",
          mappings = {
            ["A"] = "git_add_all",
            ["gu"] = "git_unstage_file",
            ["ga"] = "git_add_file",
            ["gr"] = "git_revert_file",
            ["gc"] = "git_commit",
            ["gp"] = "git_push",
            ["gg"] = "git_commit_and_push",
          },
        },
      },
      filesystem = {
        -- follow_current_file = true,
        -- hijack_netrw_behavior = "open_current",
        -- use_libuv_file_watcher = true,
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          -- hide_by_name = {
            -- "node_modules",
          -- },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
        window = {
          mappings = {
            ["<2-LeftMouse>"] = "open",
            -- ["<cr>"] = "open",
            ["o"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            -- ["C"] = "close_node",
            -- ["<bs>"] = "navigate_up",
            ["."] = "set_root",
            -- ["H"] = "toggle_hidden",
            ["R"] = "refresh",
            ["/"] = "fuzzy_finder",
            -- ["f"] = "filter_on_submit",
            -- ["<c-x>"] = "clear_filter",
            ["a"] = "add",
            -- ["d"] = "delete",
            ["r"] = "rename",
            -- ["y"] = "copy_to_clipboard",
            -- ["x"] = "cut_to_clipboard",
            -- ["p"] = "paste_from_clipboard",
            -- ["c"] = "copy",
            -- ["m"] = "move",
            -- ["q"] = "close_window",
          },
        },
    },
})