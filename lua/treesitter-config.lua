require("nvim-treesitter.configs").setup({
  ensure_installed = { "go", "typescript", "python", "css", "html" },
  highlight = {
    enable = true,
  },
})
