return { -- You can easily change to a different colorscheme.
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    local opts = require('tokyonight.config').defaults
    opts.style = 'night'
    opts.transparent = true
    require('tokyonight').setup(opts)
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
