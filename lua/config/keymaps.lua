-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })

-- Save and format with <leader>s+a
vim.api.nvim_set_keymap(
  "n",
  "<leader>mb",
  "<cmd>lua vim.lsp.buf.format({ async = true }); vim.cmd('write')<CR>",
  { noremap = true, silent = true }
)

-- Toggle Trouble with <leader>xx
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { noremap = true, silent = true })

-- Import nvim-cmp safely
local cmp = require("cmp")

-- Add Tab and Shift-Tab for completion navigation
cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
    ["<C-e>"] = cmp.mapping.abort(), -- Abort completion
  },
})
