-- searching for lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- if not present, installing lazy
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.localmapleader = " "

require("lazy").setup("plugins")
