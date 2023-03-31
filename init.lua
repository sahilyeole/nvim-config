require("sahil")
vim.cmd('autocmd VimEnter * NvimTreeToggle')
vim.api.nvim_exec([[
  augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup END
]], false)
