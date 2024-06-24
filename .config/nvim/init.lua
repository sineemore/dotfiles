local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('tpope/vim-sensible')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('github/copilot.vim')
Plug('mg979/vim-visual-multi')
Plug('MunifTanjim/nui.nvim')
Plug('nvim-neo-tree/neo-tree.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('neovim/nvim-lspconfig')
Plug('ray-x/go.nvim')
Plug('ray-x/guihua.lua')

vim.call('plug#end')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('go').setup()

-- Switch to dark or light theme based on the system theme
local function auto_theme()
    if not vim.fn.executable("dbus-monitor") or not vim.fn.executable("die1") then
        error('dbus-monitor or die1 not found in PATH.')
    end

    vim.system({
        'die1',
        'dbus-monitor',
        '--session',
        'type=signal,interface=org.freedesktop.impl.portal.Settings,member=SettingChanged,arg0=org.freedesktop.appearance,arg1=color-scheme',
    }, {
        text = true,
        detach = true,
        stdout = function(e, data)
            if data == nil then
                return
            end
            if string.find(data, 'uint32 1') then
                vim.schedule(function()
                    vim.api.nvim_set_option_value('background', 'dark', {})
                end)
            end
            if string.find(data, 'uint32 2') then
                vim.schedule(function()
                    vim.api.nvim_set_option_value('background', 'light', {})
                end)
            end
        end
    })
end

auto_theme()
