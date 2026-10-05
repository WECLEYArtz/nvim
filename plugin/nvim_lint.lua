vim.pack.add({"https://github.com/mfussenegger/nvim-lint"})
require('lint').linters_by_ft = {
  python3 = {'flake8'}
}
