return require('packer').startup(function()
    -- completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind.nvim'

    use { 'mfussenegger/nvim-jdtls' }
    use { 'scalameta/nvim-metals', requires = { 'nvim-lua/plenary.nvim' } }

    -- syntax
    use 'elixir-editors/vim-elixir'
    use 'lukas-reineke/indent-blankline.nvim'

    -- format
    use 'gpanders/editorconfig.nvim'
    use 'steelsojka/pears.nvim'

    -- navigation
    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
    use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    -- git
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'

    -- theme
    use 'navarasu/onedark.nvim'
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }

    -- misc
    use 'andweeb/presence.nvim'
end)

