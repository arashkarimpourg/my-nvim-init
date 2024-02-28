-- disable built-in file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require 'nvim-tree'.setup {
    -- hide root folder
    renderer = {
        root_folder_label = false,
    },
    -- hide desktop.ini files
    filters = {
        custom = { 'desktop.ini' }
    },
    -- auto-close on file open
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
}

-- map <leader>e to open sidebar
vim.api.nvim_set_keymap(
    'n', '<leader>e', ':NvimTreeToggle<CR>',
    { noremap = true, silent = true }
)

-- custom icons
require("nvim-web-devicons").set_icon {
    rs = {
        icon = "󱘗",
        color = "#f05030",
        name = "Rust"
    },
    [".gitignore"] = {
        icon = "",
        color = "#f05030",
        name = "Gitignore"
    },
    lock = {
        icon = "",
        color = "#41535b",
        name = "Lock"
    },
    toml = {
        icon = "",
        color = "#bbbbbb",
        name = "Toml"
    }
}
