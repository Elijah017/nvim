-- sets cursor to be line
vim.opt.guicursor = "i-ci-ve:ver25"

-- sets numbers true then sets relative numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- sets the tabsize to 4
vim.opt.tabstop = 2 -- the number of chars displaced by \t
vim.opt.softtabstop = 2 -- the number of ' ' representing \t
vim.opt.shiftwidth = 2 -- The indentation qualifier
vim.opt.expandtab = true -- Sets tab to place ' ' rather than \t

-- turn on smart indent
vim.opt.smartindent = true

vim.opt.wrap = false

-- allows for long running undo's
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- turns off high-lighting after search complete 
-- allows for incremental search i.e. vim.* = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- sets better colours
vim.opt.termguicolors = true

-- ensures atleast 10 lines between cursor and the
-- top/bottom of the screen
vim.opt.scrolloff = 100
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "134"

vim.g.mapleader = " "

