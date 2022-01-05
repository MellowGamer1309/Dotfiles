local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.bashls.setup {
    capabilities = capabilities
}

require'lspconfig'.csharp_ls.setup{
    capabilities = capabilities
}

require'lspconfig'.cssls.setup {
    capabilities = capabilities
}

require'lspconfig'.html.setup {
    capabilities = capabilities
}

require'lspconfig'.gopls.setup {
    capabilities = capabilities
}

require'lspconfig'.vimls.setup {
    capabilities = capabilities
}

