require("alessio")
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
vim.cmd([[set relativenumber]])

vim.cmd([[set shiftwidth=2]])
vim.cmd([[set autoindent]])
vim.cmd([[set smartindent]])

-- Enables linebreak and wrap in Markdown files
vim.api.nvim_create_augroup("MarkdownSettings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  group = "MarkdownSettings",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt.breakindent = true
    vim.opt.showbreak = '↪ '
  end,
})
