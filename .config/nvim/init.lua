vim.opt.number=true
vim.opt.encoding='UTF-8'
vim.opt.laststatus=2

-- packer
require('plugins')
require('pears').setup()
require('lsp')

-- navigation
vim.api.nvim_set_keymap(
    'n',
    '<c-f>',
    ':NERDTreeToggle<cr>',
    { noremap=true }
)

-- theme
vim.g.onedark_config = {
	style = 'deep'
}
vim.g.lightline = {
	colorscheme = 'ayu_mirage',
}

vim.cmd([[ colorscheme onedark ]])

