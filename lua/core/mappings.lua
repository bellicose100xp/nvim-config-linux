-- Normal Mode Keymaps
vim.keymap.set({ "n", "v" }, "J", "10jzz", { noremap = true, desc = "Move Down 10 Lines" })
vim.keymap.set({ "n", "v" }, "K", "10kzz", { noremap = true, desc = "Move Up 10 Lines" })
vim.keymap.set({ "n", "v" }, "H", "10h", { noremap = true, desc = "Move Left 10 Lines" })
vim.keymap.set({ "n", "v" }, "L", "10l", { noremap = true, desc = "Move right 10 Lines" })
vim.keymap.set("n", "<leader>j", "J", { desc = "Join line below" })

vim.keymap.set("n", "<leader>o", "o<ESC>k", { desc = "Add Empty Line Below" })
vim.keymap.set("n", "<leader>i", "O<ESC>j", { desc = "Add Empty Line Above" })

vim.keymap.set("n", "<leader>v", "<C-q>", { desc = "Visual Block Mode" })
vim.keymap.set("n", "<leader>y", "mmggVGy`m", {desc = "Copy entire page"})

-- Visual Mode Keymaps
vim.keymap.set("v", ">", ">gv", {desc = "Re-select after indent"})
vim.keymap.set("v", "<", "<gv", {desc = "Re-select after outdent"})

-- Visual + Select Mode Mapping
vim.keymap.set("x", "p", '"_dP')

-- Move lines up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })
vim.keymap.set("i", "<A-j>", "<ESC>:m .+1<CR>==gi", { silent = true })
vim.keymap.set("i", "<A-k>", "<ESC>:m .-1<CR>==gi", { silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "s", '"_s')

-- Select All
vim.keymap.set("n", "<leader>a", "ggVG", {noremap = true, desc = "Select All"})

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Line Object
vim.keymap.set('n', 'vil', '^v$', { noremap = true, desc = "Select current line without leading whitespace" })
vim.keymap.set('n', 'val', '0v$', { noremap = true, desc = "Select entire current line" })
vim.keymap.set('n', 'yil', '^v$y', { noremap = true, desc = "Yank current line without leading whitespace" })
vim.keymap.set('n', 'yal', '0v$y', { noremap = true, desc = "Yank entire current line" })
vim.keymap.set('n', 'dil', '^d$', { noremap = true, desc = "Delete current line without leading whitespace" })
vim.keymap.set('n', 'dal', '0d$', { noremap = true, desc = "Delete entire current line" })
vim.keymap.set('n', 'cil', '^c$', { noremap = true, desc = "Change current line without leading whitespace" })
vim.keymap.set('n', 'cal', '0c$', { noremap = true, desc = "Change entire current line" })

-- Objects between comma(,)
vim.keymap.set('n', 'vi,', 'T,vt,', { noremap = true, desc = "Select text between commas" })
vim.keymap.set('n', 'di,', 'T,dt,', { noremap = true, desc = "Delete text between commas" })
vim.keymap.set('n', 'ci,', 'T,ct,', { noremap = true, desc = "Change text between commas" })
vim.keymap.set('n', 'va,', 'F,vf,', { noremap = true, desc = "Select text including commas" })
vim.keymap.set('n', 'da,', 'F,df,', { noremap = true, desc = "Delete text including commas" })
vim.keymap.set('n', 'ca,', 'F,ct,', { noremap = true, desc = "Change text including commas" })

-- Objects between dash(-)
vim.keymap.set('n', 'vi-', 'T-vt-', { noremap = true, desc = "Select text between dashes" })
vim.keymap.set('n', 'di-', 'T-dt-', { noremap = true, desc = "Delete text between dashes" })
vim.keymap.set('n', 'ci-', 'T-ct-', { noremap = true, desc = "Change text between dashes" })
vim.keymap.set('n', 'va-', 'F-vf-', { noremap = true, desc = "Select text including dashes" })
vim.keymap.set('n', 'da-', 'F-df-', { noremap = true, desc = "Delete text including dashes" })
vim.keymap.set('n', 'ca-', 'F-ct-', { noremap = true, desc = "Change text including dashes" })

-- Objects between asterisk(*)
vim.keymap.set('n', 'vi*', 'T*vt*', { noremap = true, desc = "Select text between asterisks" })
vim.keymap.set('n', 'di*', 'T*dt*', { noremap = true, desc = "Delete text between asterisks" })
vim.keymap.set('n', 'ci*', 'T*ct*', { noremap = true, desc = "Change text between asterisks" })
vim.keymap.set('n', 'va*', 'F*vf*', { noremap = true, desc = "Select text including asterisks" })
vim.keymap.set('n', 'da*', 'F*df*', { noremap = true, desc = "Delete text including asterisks" })
vim.keymap.set('n', 'ca*', 'F*ct*', { noremap = true, desc = "Change text including asterisks" })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- bufferline
vim.keymap.set("n", "<Leader>bp", "<cmd>BufferLinePick<cr>", {desc = "Pick buffer tabs by keywords"})

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
