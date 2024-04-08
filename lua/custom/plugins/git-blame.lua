return {
  'f-person/git-blame.nvim',
  config = function()
    local blame = require 'gitblame'
    blame:setup()
  end,
}
