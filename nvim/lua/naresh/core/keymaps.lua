-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Standard operations
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "save" })
keymap.set("n", "<leader>q", "<cmd>confirm q<CR>", { desc = "quit" })
keymap.set("n", "<leader>n", "<cmd>enew<CR>", { desc = "New file" })
keymap.set("n", "<C-s>", "<cmd>w!<CR>", { desc = "write file" })
-- keymap.set("<C-q>", "<cmd>qa!<CR>", { desc = "force quit" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- buffer navigation
keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Goto next buffer" })
keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Goto previous buffer" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Terminal management
--keymap.set("n","<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle terminal" })
keymap.set(
  "n",
  "<leader>th",
  "<cmd>ToggleTerm size=10 direction=horizontal<CR>",
  { desc = "Toggle terminal horizontal split" }
)
keymap.set(
  "n",
  "<leader>tv",
  "<cmd>ToggleTerm size=80 direction=vertical<CR>",
  { desc = "Toggle terminal vertical split" }
)
