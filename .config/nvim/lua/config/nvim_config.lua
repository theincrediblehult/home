vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 8

-- disable netrw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1


-- smart case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlight search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- enable 24-bit color
vim.opt.termguicolors = true

vim.opt.updatetime = 50

-- undodir stuff
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- use system clipboard for yank and paste
vim.opt.clipboard = 'unnamedplus'

-- Indenting
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

-- theming
vim.cmd 'colorscheme tokyonight-night'
