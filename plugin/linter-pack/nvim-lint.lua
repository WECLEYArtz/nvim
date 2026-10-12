vim.pack.add({
	"https://github.com/mfussenegger/nvim-lint"
})

require('lint').linters_by_ft = {
  python = {'pydocstyle'},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
