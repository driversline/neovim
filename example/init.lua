vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", fg = "#ffffff" })
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.numberwidth = 2

require('packer').startup(function()
    use 'kyazdani42/nvim-tree.lua'
end)

require'nvim-tree'.setup {}

vim.api.nvim_set_keymap('n', '<C-q>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
