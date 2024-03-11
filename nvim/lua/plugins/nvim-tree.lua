return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    -- settings from documentation
    -- -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    -- OR setup with some options
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })

    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
  end
}
