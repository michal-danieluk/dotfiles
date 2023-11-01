vim.g.mapleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Tabs
vim.keymap.set("n", "te", ":tabedit")
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
--keymap.set('n', '<TAB>', ':tabNext <CR>')
vim.keymap.set("n", "<leader><TAB>", ":tabnew <CR>")
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
--buffers
vim.api.nvim_set_keymap("n", "tk", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tj", ":bprev<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "th", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":blast<enter>", { noremap = false })
-- Split window
vim.keymap.set("n", "ss", ":split<Return><C-w>w")
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w")
vim.keymap.set("n", "se", "<C-w>=")
vim.keymap.set("n", "sx", ":close<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", "<C-w><C-w>")
-- write and quit
-- To jest ważne i będę musiał znowu to wysłać
vim.api.nvim_set_keymap("n", "QQ", ":q!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "WW", ":w!<enter>", { noremap = false })
-- Git maps
vim.api.nvim_set_keymap("n", "<leader>ga", ":Git add . <CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gc", ':Git commit -m "', { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push -u origin HEAD<CR>", { noremap = false })
