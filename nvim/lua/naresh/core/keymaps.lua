-- setk key to space
vim.g.mapleader = " "

local k = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
k.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
k.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Standard operations
k.set("n", "<leader>w", "<cmd>w<CR>", { desc = "save" })
k.set("n", "<leader>q", "<cmd>confirm q<CR>", { desc = "quit" })
k.set("n", "<leader>n", "<cmd>enew<CR>", { desc = "New file" })
k.set("n", "<C-s>", "<cmd>w!<CR>", { desc = "write file" })
-- k.set("<C-q>", "<cmd>qa!<CR>", { desc = "force quit" })

-- delete single character without copying into register
-- k.set("n", "x", '"_x')

-- buffer navigation
k.set("n", "<Tab>", ":bnext<CR>", { desc = "Goto next buffer" })
k.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Goto previous buffer" })

-- increment/decrement numbers
k.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
k.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
k.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
k.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
k.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
k.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
k.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
k.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
k.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
k.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
k.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Terminal management
--k.set("n","<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
k.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle terminal" })
k.set(
  "n",
  "<leader>th",
  "<cmd>ToggleTerm size=10 direction=horizontal<CR>",
  { desc = "Toggle terminal horizontal split" }
)
k.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>", { desc = "Toggle terminal vertical split" })
