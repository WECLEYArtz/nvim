--			COLEMAK BETTER MOTION
vim.g.Arrows = false
function ArrowsToggle(arg)
	if arg ~= nil and (type(arg) == "boolean") and (arg == vim.g.Arrows) then
		return
	end

	if not vim.g.Arrows then
		vim.keymap.set({ "n", "v" }, "n", "<Down>", { noremap = true })
		vim.keymap.set({ "n", "v" }, "e", "<Up>", { noremap = true })
		vim.keymap.set({ "n", "v" }, "i", "<Right>", { noremap = true })
		vim.opt.cursorline = false
	else
		vim.keymap.del({ "n", "v" }, "n")
		vim.keymap.del({ "n", "v" }, "e")
		vim.keymap.del({ "n", "v" }, "i")
		vim.opt.cursorline = true
	end

	vim.g.Arrows = not vim.g.Arrows
end

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.keymap.set({ "n", "v" }, "<leader>.", function()
			ArrowsToggle()
		end, { noremap = true, silent = true })
	end,
})
ArrowsToggle() -- Toggle arrows to true;

--			Change Directory
vim.keymap.set("n", "<leader>cp", function()
	vim.fn.setreg("+", vim.fn.expand("%:p:h"))
	vim.notify("Copied path")
end)

--			BETTER COLEMAK SELECT
vim.keymap.set("n", "vi", "vi")
