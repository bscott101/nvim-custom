vim.g.mapleader = " "

local function map(mode, lhs, rhs, description)
	description = description or ""
	vim.keymap.set(mode, lhs, rhs, { silent = true, desc = description })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>", "Updates")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>", "Quit")

-- Exit insert mode
map("i", "jk", "<ESC>", "jk exit file")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>", "Open File Directory")
map("n", "<leader>r", "<CMD>Neotree focus<CR>", "Focus File Directory")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>", "Vertical split window")
map("n", "<leader>p", "<CMD>split<CR>", "Horizontal split window")

-- Window Navigation
map("n", "<C-h>", "<C-w>h", "Change window left")
map("n", "<C-l>", "<C-w>l", "Change window right")
map("n", "<C-k>", "<C-w>k", "Change window up")
map("n", "<C-j>", "<C-w>j", "Change window down")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- terminals
map("n", "<leader>ht", [[<cmd>split | term<cr>A]], "Open terminal in horizontal split")
map("t", "<Esc>", "<C-\\><C-n>", "Exit terminal mode")

-- theme picker
map("n", "<leader>tt", "<cmd>Themery<cr>", "Theme Selection")
