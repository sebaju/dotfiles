local function map(m)
    vim.cmd(m)
end

map('nnoremap <silent> tt :BufferLineCycleNext<CR>')
map('nnoremap <silent> TT :BufferLineCyclePrev<CR>')
map('nnoremap <silent> ts :BufferLineSortByDirectory<CR>')
map('nnoremap <silent> TS :BufferLineSortByExtension<CR>')
map('nnoremap <silent> <C-l> :so $MYVIMRC<CR> :nohl<CR><C-l> :NvimTreeRefresh<CR>')

