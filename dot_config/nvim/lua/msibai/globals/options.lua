vim.opt.clipboard = 'unnamedplus'
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
-- Set highlight on search.
vim.opt.hlsearch = true
vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.mouse = ''
vim.opt.showcmd = false
vim.opt.undofile = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Put new windows below current
vim.opt.splitbelow = true
-- Put new windows right of current
vim.opt.splitright = true
vim.opt.splitkeep = 'cursor'
-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
