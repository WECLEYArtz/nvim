vim.pack.add({"https://github.com/TaDaa/vimade"})

require("vimade").setup({
	recipe = {"default", {animate = true}},
	fadelevel = 0.7,
	blocklist = {
		neotree = {
			buf_opts = {
				filetype = {
					"neo-tree",
					"undotree",
				},
			},
		},
	},
})
