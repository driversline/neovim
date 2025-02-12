# Установка плагинов через packer (Для lua)

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Вывести установленные плагины

```bash
:PackerStatus
```

# Синхронизация (Скачивание плагинов)

```bash
:PackerSync
```

## Пути [тут](https://github.com/driversline/docs/blob/main/pwd/.config/README.md)

# Пример 1 (Открытие содержимого папки на Ctrl + q)

```bash
require('packer').startup(function()
    use 'kyazdani42/nvim-tree.lua'
end)

require'nvim-tree'.setup {}

vim.api.nvim_set_keymap('n', '<C-q>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
```

# Пример 2 (Автоматическое открытие содержимого папки с задержкой 100)

```bash
require('packer').startup(function()
    use 'kyazdani42/nvim-tree.lua'
end)

require'nvim-tree'.setup {}

vim.defer_fn(function()
    vim.cmd([[NvimTreeToggle]])
end, 100) 
```
