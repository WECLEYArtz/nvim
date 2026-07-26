vim.pack.add({
	"https://github.com/hardyrafael17/norminette42.nvim",
	"https://github.com/cacharle/c_formatter_42.vim"
})

-- setup with without options

vim.api.nvim_create_user_command("Norm42", function(arg)
	if arg.args == "on" then
		require("norminette").setup()
		print("Norm42 turned on")
	elseif arg.args == "off" then
		require("norminette").setup({active = false})
		print("Norm42 turned off")
	else
		print("invalid argument " .. arg.args)
	end
end, {nargs = 1, desc = "Prints Hello World" })
