local o = vim.opt
local c = vim.cmd

c('filetype indent plugin on')
c('syntax on')

o.mouse =               'a'

o.cursorline =          true
o.number =              true
o.numberwidth =         5
o.lazyredraw =          true
o.wrap =                false
o.termguicolors =       true
o.guicursor =           'a:hor25'
o.fillchars =           'stl: '

o.confirm =             true
o.splitbelow =          true
o.splitright =          true
o.showmatch =           true
o.smartcase =           true
o.ignorecase =          true
o.hlsearch =            true
o.wildmenu =            true
o.hidden =              true
o.incsearch =           true
o.smartindent =         true
o.softtabstop =         4
o.expandtab =           true
o.shiftwidth =          4
o.virtualedit =         'all'
o.clipboard =           'unnamedplus'   

local config = {}

function config.is_buffer_empty()
    return vim.fn.empty(vim.fn.expand("%:t")) == 1
end

return config
