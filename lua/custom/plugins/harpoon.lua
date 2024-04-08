return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add to Harpoon' })
    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open Harpoon' })

    for i = 1, 9, 1 do
      vim.keymap.set('n', '<leader>' .. i, function()
        harpoon:list():select(i)
      end, { desc = 'Select Harpoon Tab ' .. i })
    end

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader><S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon [P]rev' })
    vim.keymap.set('n', '<leader><S-N>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon [N]ext' })
  end,
}
