local lspconfig = require("lspconfig")

-- Go
lspconfig.gopls.setup({})

-- TypeScript/JavaScript
lspconfig.tsserver.setup({})

-- Python
lspconfig.pyright.setup({})

-- CSS/HTML
lspconfig.cssls.setup({})
lspconfig.html.setup({})
