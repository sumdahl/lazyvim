local lspconfig = require("lspconfig")

-- Diagnostics configuration
vim.diagnostic.config({
  virtual_text = true, -- Show inline diagnostics
  signs = true, -- Show signs in the sign column
  underline = true, -- Underline errors
  update_in_insert = false, -- Update diagnostics only when leaving insert mode
})

-- Add custom signs for errors, warnings, etc.
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Language server configurations
lspconfig.gopls.setup({})
lspconfig.tsserver.setup({})
lspconfig.pyright.setup({})
lspconfig.cssls.setup({})
lspconfig.html.setup({})
