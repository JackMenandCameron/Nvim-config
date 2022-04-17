-- Used to initialize the treesitter
-- Helpful info included in the github
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "c", "lua", "rust" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
