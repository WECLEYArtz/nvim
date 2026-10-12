vim.pack.add({
	"https://github.com/nvim-neo-tree/neo-tree.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	"https://github.com/MunifTanjim/nui.nvim",
})


Config = {
	event_handlers = {
		{
			event = "file_open_requested",
			handler = function()
				-- auto close
				-- vim.cmd("Neotree close")
				-- OR
				require("neo-tree.command").execute({ action = "close" })
			end,
		},
	},
	buffers = {
		follow_current_file = {
			enable = true,
		},
	},
	mapping_options = {
		noremap = true,
		nowait = true,
	},
	window = {
		mappings = {
			["="] = "toggle_auto_expand_width",
			["<space>"] = "noop", -- allow leader to work as toggle_node, still dont understand how it exactly works
			["<leader>"] = "open",
			["P"] = {
				"toggle_preview",
				config = {
					use_float = false,
					-- use_image_nvim = true,
					title = "Neo-tree Preview",
				},
			},
		},
	},
}

if os.getenv("COLEMAK") then
	Config.window.mappings["e"] = "noop"
end

require("neo-tree").setup(Config)
