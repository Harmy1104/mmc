require 'whatadrag.general'
require 'whatadrag.colorscheme'
require 'whatadrag.keymaps'
require 'whatadrag.comment'
require 'whatadrag.plugins'
require 'whatadrag.colorizer'
require 'whatadrag.bufferline'
require 'whatadrag.windline'
require 'whatadrag.web_devicons'
require 'whatadrag.toggleterm'
require 'whatadrag.nvim_tree'
require 'whatadrag.treesitter'
-- require 'whatadrag.hardline'
require 'whatadrag.telescope'
require 'whatadrag.coc'
-- require 'whatadrag.indent-blankline'

-- ╭─────────╮
-- │ autocmd │
-- ╰─────────╯
require 'whatadrag.autocmd'

vim.cmd [[
    source ~/.config/nvim/lua/coc.vim
]]
