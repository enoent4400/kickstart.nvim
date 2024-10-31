return {
  'ggandor/leap.nvim',
  dependencies = { 'tpope/vim-repeat' },
  config = function()
    -- Remove the default 'S' behavior before setting up leap
    local leap = require 'leap'

    leap.setup {
      equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' },
    }

    -- Use enter/backspace to repeat the previous motion
    require('leap.user').set_repeat_keys('<enter>', '<backspace>')

    -- Create default mappings

    vim.keymap.set({ 'n', 'x', 'o' }, 's', function()
      require('leap').leap { target_windows = { vim.fn.win_getid() } }
    end)
  end,
}
