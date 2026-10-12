vim.g.mapleader = " "

--			COPY DIRECTORY
vim.keymap.set("n", "<leader>cd", "<Cmd>cd %:h<CR>")

--			BETTER FOLDS
-- vim.keymap.set("n", "d<BS>", "zd") //conflicting with telescope buffer
vim.keymap.set("n", "<BS>", "za")
vim.keymap.set("v", "<BS>", "zf")

--			FILES EXPLORER
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree reveal_force_cwd<CR>")

--			DASH_BOARD
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

--			SPAWN TERMINAL
vim.keymap.set({ "n" }, "<leader>t", vim.cmd.terminal)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
-- vim.keymap.set("t", "<leader>x", "<C-\\><C-n>")

--			BUFFERS
vim.keymap.set({ "n" }, "<tab>", vim.cmd.bnext)
vim.keymap.set({ "n" }, "<S-tab>", vim.cmd.bprevious)

--			WINDOWS MOTION
vim.keymap.set("n", "<leader>wn", "<C-W>j")
vim.keymap.set("n", "<leader>we", "<C-W>k")
vim.keymap.set("n", "<leader>wi", "<C-W>l")
vim.keymap.set("n", "<leader>wh", "<C-W>h")

vim.keymap.set("n", "<leader>wN", "<C-W>J")
vim.keymap.set("n", "<leader>wE", "<C-W>K")
vim.keymap.set("n", "<leader>wI", "<C-W>L")
vim.keymap.set("n", "<leader>wH", "<C-W>H")

vim.keymap.set("n", "<leader>wo", vim.cmd.only)

--			WINDOWS ACTION
vim.keymap.set("n", "<leader>wt", "<C-W>T") --move window to new tab, damn so good.
vim.keymap.set("n", "<leader>nw", "<C-W><C-N>")

--			WINDOWS JUMPS
vim.keymap.set("n", "<leader>1", function()
	vim.cmd("1wincmd w")
end)
vim.keymap.set("n", "<leader>2", function()
	vim.cmd("2wincmd w")
end)
vim.keymap.set("n", "<leader>3", function()
	vim.cmd("3wincmd w")
end)
vim.keymap.set("n", "<leader>4", function()
	vim.cmd("4wincmd w")
end)

--			SPLIT
vim.keymap.set("n", "<leader>wsv", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>wsh", vim.cmd.split)
--			C42Format
vim.keymap.set("n", '<F10>', '<Cmd>CFormatter42<CR>')

--			BETTER ESCAPE
vim.keymap.set({ "n", "v", "i" }, "<leader>x", "<Esc>:lua ArrowsToggle(true)<CR>")
--			BETTER UNDO
vim.keymap.set("n", "U", "<C-r>")

--			BETTER WRITE
vim.keymap.set("n", "<leader>ww", vim.cmd.write)
--			BETTER QUIT
vim.keymap.set("n", "<leader>qq", vim.cmd.quit)
-- vim.keymap.set("n", "<leader>Q", vim.cmd.quitall)

--			NO HIGHLIGHT
vim.keymap.set("n", "<leader>no", vim.cmd.nohl)
--			UNDOTREE
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

--			MAKE
vim.keymap.set("n", "<leader>m", function()
	vim.cmd("write | make")
end)

if os.getenv("COLEMAK") then
	require("remap-colemak")
end
