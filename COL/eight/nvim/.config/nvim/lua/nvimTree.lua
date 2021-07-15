local M = {}

M.config = function()

    local g = vim.g

    vim.o.termguicolors = true
    
    g.nvim_tree_width = 23
    g.nvim_tree_tab_open = 1
    g.nvim_tree_hijack_cursor = 1 
    g.nvim_tree_auto_open = 1 
    g.nvim_tree_highlight_opened_files = 1
    g.nvim_tree_root_folder_modifier = ':~'
    g.nvim_tree_indent_markers = 1 
    g.nvim_tree_add_trailing = 1
    g.nvim_tree_follow = 1

    g.nvim_tree_show_icons = {
        git = 0,
        folders = 0,
        files = 0,
        folder_arrows = 0
    }

        g.nvim_tree_icons = {
        default = "",
        symlink = "",
        git = {
            unstaged = "",
            staged = "",
            unmerged = "",
            renamed = "",
            untracked = "",
            deleted = "",
            ignored = ""
            },
        folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = ""
            },
        lsp = {
            hint = "",
            info = "",
            warning = "",
            error = ""
            }
        }   
     
        local tree_cb = require "nvim-tree.config".nvim_tree_callback        

end

return M
