local ok, neo_tree = pcall(require, "neo-tree")

if not ok then
    return
end

neo_tree.setup {
    close_if_last_window = false,
    enable_diagnostics = false,
    enable_git_status = true,
    popup_border_style = "rounded",
    sort_case_insensitive = false,
    default_component_configs = {
        indent = {
            indent_size = 2,
            padding = 0,
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
            with_expanders = false,
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
        },
        icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
            default = "",
            highlight = "NeoTreeFileIcon",
        },
        name = {
            trailing_slash = false,
            use_git_status_colors = true,
        },
        git_status = {
            window = {
                position = "float",
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
            symbols = {
                added = "",
                deleted = "",
                modified = "",
                renamed = "",
                untracked = "★",
                ignored = "",
                unstaged = "✗",
                staged = "✓",
                conflict = "",
            },
        },
    },
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        },
    },
    window = { width = 25 },
    event_handlers = {
        {
            event = "vim_buffer_enter",
            handler = function(_)
                if vim.bo.filetype == "neo-tree" then
                    vim.wo.signcolumn = "auto"
                end
            end,
        },
    },
    source_selector = {
        winbar = false,
        statusline = false,
    },
}
