return {
	"TaDaa/vimade",
	config = function()
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
	end,
}
