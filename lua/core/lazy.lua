-- Lazy Plugin Manager code from https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Bootstrap Lazy Plugin Manager
require("lazy").setup({
    { import = "plugins" }, -- "plugins" folder contains individual .lua files for each plugin
}, {
    checker = {
        enabled = true, -- check for updates on startup
        notify = false, -- don't notify about these updates on startup
    },
    change_detection = {
        notify = false, -- don't notify every-time on config change
    },
});

