-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Undo breakpoints
keymap("i", ",", ",<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Jump between tabs
keymap("n", "<leader>1", "1gt", opts)
keymap("n", "<leader>2", "2gt", opts)
keymap("n", "<leader>3", "3gt", opts)
keymap("n", "<leader>4", "4gt", opts)
keymap("n", "<leader>5", "5gt", opts)
keymap("n", "<leader>6", "6gt", opts)
keymap("n", "<leader>7", "7gt", opts)
keymap("n", "<leader>8", "8gt", opts)
keymap("n", "<leader>9", "9gt", opts)
keymap("n", "<leader>0", ":tablast<CR>", opts)

-- Stay in indent mode
keymap("v", "<S-Tab>", "<gv", opts)
keymap("v", "<Tab>", ">gv", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Vertical and horizontal splits
keymap("n", "<leader>v", "<cmd>vsplit<CR>", opts)
keymap("n", "<leader>h", "<cmd>split<CR>", opts)

-- Quit
keymap("n", "<leader>q", "<cmd>q!<CR>", opts)

-- Explorer
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Find Files
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)

-- Live Grep
keymap("n", "<leader>F", "<cmd>Telescope live_grep<cr>", opts)

-- Open Buffers
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)

-- Close Buffer
keymap("n", "<leader>c", "<cmd>Bdelete<CR>", opts)

-- Harpoon
keymap("n", "<leader>m", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)
keymap("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", opts)
keymap("n", "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", opts)
keymap("n", "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
