return {
  'numToStr/Comment.nvim',
  lazy = false,
  config = function()
    local comments = require 'Comment'
    comments:setup()
  end,
}
