local gl = require('galaxyline')
local gls = gl.section
local condition = require('galaxyline.condition')
gl.short_line_list = { "NvimTree" }

local theme = 'themes/' .. vim.g.theme
local colors = require(theme)

local vimodeco = function()
    local vimodeco = {
        n = colors.comment,
        i = colors.green,
        c = colors.aqua,
        v = colors.red,
        V = colors.red,
        R = colors.blue,
        t = colors.purple
    }

    local color = vimodeco[vim.fn.mode()]

    if color == nil
    then
        color = colors.red
    end

    return color
end

gls.left[1] = {
    ViMode = {
        provider = function()
            local alias = {
                n = 'NORMAL',
                i = 'INSERT',
                c= 'COMMAND',
                V= 'VISUAL LINE',
                [''] = 'VISUAL BLOCK',
                v ='VISUAL',
                c  = 'COMMAND LINE',
                ['r?'] = 'CONFIRM',
                rm = 'MORE',
                R  = 'REPLACE',
                Rv = 'VIRTUAL',
                s  = 'SELECT',
                S  = 'SELECT',
                ['r']  = 'HIT ENTER',
                [''] = 'SELECT',
                t  = 'TERMINAL',
                ['!']  = 'SHELL',
            }
            vim.api.nvim_command('hi GalaxyViMode guifg=' .. vimodeco()) 
            local aliasmode = alias[vim.fn.mode()]
            if aliasmode == nil then
                aliasmode = alias[vim.fn.mode()]
            end
            return '▍' .. aliasmode .. ' '
        end,
        highlight = {colors.background_b, colors.background_b}
    }
}

gls.right[1] = {
    FileName = { 
        provider = 'FileName',
        condition = buffer_not_empty,
        highlight = {colors.blue, colors.background_b} 
    }
}
