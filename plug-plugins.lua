-- plugin manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require('lazy').setup({
    { 'catppuccin/nvim' },
    { 'EtiamNullam/deferred-clipboard.nvim' },
    { 'akinsho/toggleterm.nvim' },
    { 'nvim-tree/nvim-web-devicons' }, -- nvim-tree / barbar
    { 'kyazdani42/nvim-tree.lua' },
    { 'lewis6991/gitsigns.nvim' },     -- barbar
    { 'romgrk/barbar.nvim' }
})

-- configs
require('plug-catppuccin')
require('plug-deferred-clipboard')
require('plug-toggleterm')
require('plug-nvim-tree')
require('plug-barbar')
