require('plugins')
require('keybindings')
require('options')

vim.g.vscode_style = "dark"

vim.cmd[[colorscheme vscode]]
-- Lua
-- require("github-theme").setup({
--  theme_style = "dark",
--  -- other config
--})

--vim.g.rose_pine_disable_italics = true
-- vim.g.rose_pine_variant = 'moon'
--vim.cmd[[colorscheme dracula]]
-- Lua initialization file
-- vim.cmd[[colorscheme nightfly]]


local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
