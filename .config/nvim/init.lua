vim.opt.number=true
vim.opt.encoding='UTF-8'
vim.opt.laststatus=2
vim.opt_global.shortmess:remove("F")

local function map (action, command)
    vim.api.nvim_set_keymap('n', action, command, {
        noremap = true,
        silent = true,
    })
end

-- packer
require('plugins')
require('pears').setup()
require('lsp')

-- navigation
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            -- dependencies
            "node_modules",
            -- build
            "target",
            "build",
            "dist",
            "bin",
        }
    }
}

require('nvim-tree').setup {
    view = {
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
}

map('<c-f>', ':NvimTreeToggle<cr>')
map('ff', ':Telescope find_files<cr>')

map('<c-Left>', ':BufferPrevious<cr>')
map('<c-Right>', ':BufferNext<cr>')
map('<c-q>', ':BufferClose<cr>')

-- syntax
require('indent_blankline').setup {
    show_current_context = true,
    show_current_context_start = true,
}

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
