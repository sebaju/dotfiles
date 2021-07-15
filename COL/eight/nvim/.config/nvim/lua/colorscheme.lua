local c = vim.cmd 

local theme = 'themes/' .. vim.g.theme
local colors = require(theme)

local bg = colors.background
local bb = colors.background_b
local bi = colors.background_c
local fg = colors.foreground
local se = colors.selection
local co = colors.comment  
local re = colors.red
local oo = colors.orange
local ye = colors.yellow
local gr = colors.green
local aq = colors.aqua
local bl = colors.blue
local pu = colors.purple

c('set background=dark')
c('hi clear')
c('hi clear search')
c('syntax reset')
c("let g:indent_blankline_char_highlight_list = ['linenr']")
c("let g:indent_blankline_space_char_highlight_list = ['linenr']")

local function yo(group, gfg, gbg, att)
    if (group ~= '')
    then
        if (gfg ~= '')
        then
            c('hi ' .. group .. ' guifg=' .. gfg)
        end
        if (gbg ~= '')
        then
            c('hi ' .. group .. ' guibg=' .. gbg)
        end
        if (att ~= '')
        then
            c('hi ' .. group .. ' gui=' .. att .. ' cterm=' .. att)
        elseif (att == '')
        then
            c('hi ' .. group .. ' gui=none cterm=none')
        end
    end
end

yo('Normal',                              fg, bg, '')
yo('LineNr',                              se, '', '')
yo('Error',                               se, re, '')
yo('ErrorMsg',                            se, re, '')
yo('NonText',                             se, '', '')
yo('SpecialKey',                          se, '', '')
yo('Search',                              '', se, 'bold')
yo('TabLine',                             co, bg, '')
yo('TabLineSel',                          re, bg, '')
yo('TabLineFill',                         re, bg, '')

yo('StatusLine',                          se, bb, '')
yo('StatusLineNC',                        se, bb, 'bold')   
yo('WildMenu',                            re, bg, '')

yo('Pmenu',                               co, bb, '')  
yo('PmenuSel',                            re, bb, '')  
yo('PmenuSbar',                           '', bb, '')  
yo('PmenuThumb',                          '', se, '')  

yo('VertSplit',                           se, '', '') 
yo('Visual',                              '', se, '') 
yo('Directory',                           bl, '', '') 
yo('ModeMsg',                             bg, '', 'bold')
yo('MoreMsg',                             gr, '', 'bold') 
yo('Question',                            gr, '', '')
yo('Warningmsg',                          re, '', '')
yo('MatchParen',                          '', se, '') 
yo('Folded',                              co, bg, '') 
yo('FoldColumn',                          '', bg, '') 
yo('CursorLine',                          '', bg, '') 
yo('CursorLineNr',                        co, '', '')
yo('CursorColumn',                        '', se, '') 
yo('SignColumn',                          '', bg, '')
yo('ToolbarLine',                         '', se, '')
yo('ColorColumn',                         '', se, '') 

-- STANDARD
yo('Comment',                             co, '', '') 
yo('Todo',                                co, bg, '') 
yo('Title',                               co, '', '') 
yo('Identifier',                          re, '', '') 
yo('Statement',                           fg, '', '') 
yo('Conditional',                         fg, '', '') 
yo('Repeat',                              fg, '', '') 
yo('Structure',                           pu, '', '') 
yo('Function',                            bl, '', '') 
yo('Constant',                            oo, '', '') 
yo('Keyword',                             oo, '', '') 
yo('String',                              gr, '', '') 
yo('Special',                             fg, '', '') 
yo('PreProc',                             pu, '', '') 
yo('Operator',                            aq, '', '') 
yo('Type',                                bl, '', '') 
yo('Define',                              pu, '', '') 
yo('Include',                             bl, '', '') 
yo('Ignore',                              co, '', '') 

-- VIM
yo('vimCommand',                          oo, '', '') 

-- HTML
yo('htmlTag',                             re, '', '') 
yo('htmlTagName',                         re, '', '') 

-- DIFF
yo('diffAdd',                             gr, '', '') 
yo('diffDelete',                          re, '', '') 
yo('diffChange',                          ye, '', '') 
yo('diffText',                            se, bl, '') 

-- GIT
yo('diffAdded',                           gr, '', '') 
yo('diffRemoved',                         re, '', '') 
yo('gitcommitSummary',                    '', '', 'bold')  

-- NVIM

yo('NvimInternalError',                   re, re, '')  
yo('', '', '', '')  
yo('', '', '', '')  
yo('', '', '', '')  
yo('', '', '', '')  
yo('', '', '', '')  
yo('', '', '', '')  

-- NVIMTREE

yo('NvimTreeNormal',                      '', bi, '') 
yo('NvimTreeEndOfBuffer',                 bi, '', '') 
yo('NvimTreeVertSplit',                   bi, bi, '') 
yo('NvimTreeStatusLine',                  bi, bi, '')
yo('NvimTreeStatusLineNc',                bi, bi, '')
yo('NvimTreeCursorLine',                  '', bb, '')  

yo('NvimTreeRootFolder',                  pu, '', '')  
yo('NvimTreeExecFile',                    gr, '', '')  
yo('NvimTreeOpenedFolderName',            bl, '', 'bold')  
yo('NvimTreeOpenedFile',                  bl, '', 'bold')  
yo('NvimTreeSymlink',                     aq, '', '')  
yo('NvimTreeSpecialFile',                 oo, '', '')  
yo('NvimTreeImageFile',                   pu, '', '')  
yo('NvimTreeFileDeleted',                 se, '', '')  
yo('NvimTreeIndentMarker',                se, '', '')  
yo('NvimTreeWindowPicker',                re, bi, '')  
yo('', '', '', '')  
yo('', '', '', '')  
yo('', '', '', '')  

-- BUFFERLINE

yo('BufferLineFill',                      '', bb, '') 
yo('BufferLineBackground',                se, bb, '') 
yo('BufferLineBuffer',                    se, bb, '')
yo('BufferLineBufferVisible',             co, bb, '')  
yo('BufferLineBufferSelected',            re, bg, '')  
yo('BufferLineTab',                       se, bb, '')
yo('BufferLineTabClose',                  co, bb, '')
yo('BufferLineTabVisible',                co, bb, '')  
yo('BufferLineTabSelected',               re, bg, '')  
yo('BufferLineSeparator',                 bb, bb, '')  
yo('BufferLineSeparatorVisible',          co, bb, '')  
yo('BufferLineSeparatorSelected',         bb, bb, '') 
yo('BufferLineIndicator',                 bb, bb, '')  
yo('BufferLineIndicatorVisible',          co, bb, '')  
yo('BufferLineIndicatorSelected',         bb, bb, '')  
yo('BufferLineModified',                  se, bb, '')
yo('BufferLineModifiedVisible',           co, bb, '')  
yo('BufferLineModifiedSelected',          gr, bg, '')  
yo('BufferLineCloseButton',               se, bb, '')  
yo('BufferLineCloseButtonVisible',        co, bb, '')
yo('BufferLineCloseButtonSelected',       co, bg, '')   
