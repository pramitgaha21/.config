vim.opt.scrolloff = 2
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.scrolloff = 10
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.ignorecase = true
vim.opt.mouse = ""

-- no arrow keys --- force yourself to use the home row
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("i", "<up>", "<nop>")
vim.keymap.set("i", "<down>", "<nop>")
vim.keymap.set("i", "<left>", "<nop>")
vim.keymap.set("i", "<right>", "<nop>")

-- better navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = true, silent = true })

-- code navigation

-- jumps to the definition
vim.keymap.set("n", "gd", '<cmd>lua vim.lsp.buf.definition()<cr>')

-- humps to the declaration
vim.keymap.set("n", "gD", '<cmd>lua vim.lsp.buf.declaration()<cr>')
