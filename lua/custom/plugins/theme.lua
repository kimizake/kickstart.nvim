return { -- You can easily change to a different colorscheme.
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('tokyonight').setup {
      style = 'night',
      transparent = true,
    }
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
