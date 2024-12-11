return {
  -- LSP (Language Server Protocol) setup
  { "neovim/nvim-lspconfig" },

  -- Additional LSP support plugins
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Autocompletion plugins
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },

  -- Snippet support
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Syntax highlighting for treesitter
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
}
