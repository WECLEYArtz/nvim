vim.pack.add({ "https://github.com/nvimdev/indentmini.nvim"})
require("indentmini").setup({}) -- use default config
vim.cmd.highlight("indentline guifg=#253737")
vim.cmd.highlight("indentlinecurrent guifg=#466969")
