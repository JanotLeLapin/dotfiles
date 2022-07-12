return require('packer').startup(function()
    -- completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind.nvim'

    use { 'mfussenegger/nvim-jdtls', ft = { 'java' } }

    -- format
    use 'gpanders/editorconfig.nvim'
    use 'steelsojka/pears.nvim'

    -- navigation
    use 'preservim/nerdtree'
    use 'ctrlpvim/ctrlp.vim'

    -- git
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'

    -- theme
    use 'navarasu/onedark.nvim'
    use 'itchyny/lightline.vim'
    use 'ryanoasis/vim-devicons'
end)

