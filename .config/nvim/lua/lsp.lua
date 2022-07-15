-- Language server
local lspconfig = require('lspconfig')
local on_attach = require('mappings')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local servers = {
    'pyright',
    'tsserver',
    'metals',
    'rust_analyzer',
    'html',
    'cssls',
}
for _, server in ipairs(servers) do
    lspconfig[server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

-- Autocompletion
local lspkind = require('lspkind')
local luasnip = require('luasnip')
local cmp = require('cmp')
cmp.setup {
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol',
            maxwidth = 50,
            before = function (entry, vim_item)
                return vim_item
            end
        })
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<c-space>'] = cmp.mapping.complete(),
        ['<cr>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<s-tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
}

