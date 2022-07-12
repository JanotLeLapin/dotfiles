local path = '/lib/jdtls/'
local plugins = path .. 'plugins/'

local cmd = io.popen("ls " .. plugins .. " | grep 'equinox.launcher_'")
local out = cmd:read('*a'):gsub('\n', '')
cmd:close()

local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-noverify',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', plugins .. out,
        '-configuration', path .. 'config_linux/',
        '-data', vim.fn.expand('~/.cache/jdtls-workspace') .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t'),
    },
    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    settings = {
        java = {
       }
    },
    init_options = {
        bundles = {}
    },
}

require('jdtls').start_or_attach(config)
require('mappings')(nil, nil)

