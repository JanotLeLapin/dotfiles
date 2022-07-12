vim.opt.number=true
vim.opt.encoding='UTF-8'
vim.opt.laststatus=2
vim.opt_global.shortmess:remove("F")

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
    active = {
        left = {
            {
                'mode',
                'paste',
            },
            {
                'branch',
                'readonly',
                'filename',
                'modified',
            },
        },
    },
    component_function = {
        branch = 'FugitiveHead',
    },
}

vim.cmd([[ colorscheme onedark ]])

