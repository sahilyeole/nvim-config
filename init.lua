require("sahil")
vim.cmd('autocmd VimEnter * NvimTreeToggle')
vim.api.nvim_exec([[
  augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup END
]], false)
vim.cmd [[set mouse=a]]

require('telescope').setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git", "dist", "package-lock.json", "package.json" },
  },
})

