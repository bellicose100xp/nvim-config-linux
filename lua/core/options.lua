-- Set line and relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Open window (such as help) on buttom instead of top
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Set indentation
vim.opt.tabstop = 4 -- Tab corresponds to 4 spaces
vim.opt.shiftwidth = 4  -- Each indentation level will be 4 spaces
vim.opt.expandtab = true -- Convert tabs to spaces

-- Set clipboard to be system clipboard
vim.opt.clipboard = 'unnamedplus'

-- In Visual-Block mode, allow cursors to go past the end of line — this is useful for selecting multi-line content when line lengths are not the same.
vim.opt.virtualedit = "block"

-- Disable Right-Click Mouse Options — Needed to right-click paste function to work in dev desktop
-- vim.opt.mouse = ""

-- Set Cursor Blinking in Normal and Insert Mode
-- n-v-c: Normal Modes -> block: block cursor
-- i-ci-ve: Insert Modes -> ver25: line-cursor
-- a: All Modes -> Set Blinking Rate
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250"

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd[[
    augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
    augroup END
]]
-- search settings

vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Show all colors in the terminals
vim.opt.termguicolors = true
