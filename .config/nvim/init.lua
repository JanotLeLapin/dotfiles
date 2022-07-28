vim.opt.number=true
vim.opt.encoding='UTF-8'
vim.opt.laststatus=2
vim.opt_global.shortmess:remove("F"):append("c")

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
require('lualine').setup {
    options = {
        theme = 'ayu_mirage',
    },
}

vim.cmd([[ colorscheme onedark ]])

-- Discord
require('presence'):setup {
    auto_update = true,
    neovim_image_text = 'VSCode', -- funny
    main_image = 'file',
    log_level = nil,
    debounce_timeout = 10,
    enable_line_number = false,
    blacklist = {},
    buttons = true,
    file_assets = {},

    editing_text = "Modifie %s",
    file_explorer_text = "Navigue dans %s",
    git_commiter_text = "Commit des modifications",
    plugin_manager_text = "Modifie des plugins",
    reading_text = "Inspecte %s",
    workspace_text = "Travaille sur %s",
    line_number_text = "Ligne %s/%s",
}

