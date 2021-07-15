local M = {}

M.config = function()
    require('nvim-treesitter.configs').setup {
        ensure_installed = 'all',
        highlight = {
            enable = true
        }
    }     
end

return M
