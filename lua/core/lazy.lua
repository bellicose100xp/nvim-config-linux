-- Lazy Plugin Manager code from https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"  -- path where lazy will store it's data files
if not vim.loop.fs_stat(lazypath) then  -- check if the path already has lazy installed
  vim.fn.system({  -- Runs a provided "string" as a command
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) -- rtp is "runtime path": This is where neovim is going to look for stuff

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

