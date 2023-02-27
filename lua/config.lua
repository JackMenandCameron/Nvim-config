-- Used to initialize the treesitter
-- Helpful info included in the github
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "c", "lua", "rust", "javascript", "go", "vim" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Not really sure if this is needed but makes sure all colors are ok
vim.opt.termguicolors = true

-- Better notifications
require("notify").setup({
  })
vim.notify = require("notify")

-- Menu help
local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})
wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_palette_theme({
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
    border = 'rounded',
    max_height = '75%',      -- max height of the palette
    min_height = 0,          -- set to the same as 'max_height' for a fixed height window
    prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
    reverse = 0,             -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
  })
))

-- Gruv theme
require('colorbuddy').colorscheme('gruvbuddy')


-- LSP
require('lspconfig').gopls.setup{}


-- Outline
require("symbols-outline").setup()
vim.api.nvim_set_keymap('n', '<leader>o', ':SymbolsOutline<CR>', { noremap = true, silent = true })


-- GOLANG
require('go').setup()
vim.api.nvim_set_keymap('n', '<leader>gs', ':GoFillStruct<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gS', ':GoTest<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gt', ':GoTestSum<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gF', ':GoTestFunc<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gc', ':GoCoverage<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gR', ':GoCoverage -R<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gT', ':GoAddTag<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gi', ':GoImpl<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gv', ':GoVet ./...<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gm', ':GoModTidy<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gr', ':GoGenReturn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ga', ':GoAlt<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gD', ':GoDebug<CR>', { noremap = true, silent = true })

-- Run gofmt + goimport on save
local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})


-- DAP
require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  ...
})
vim.api.nvim_set_keymap('n', '<leader>Db', ':DapToggleBreakpoint<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Ds', ':DapStop<CR>', { noremap = true, silent = true })

require("nvim-dap-virtual-text").setup()
