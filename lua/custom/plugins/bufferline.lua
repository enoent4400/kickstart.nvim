return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          number = 'ordinal',
          diagnostics = 'nvim_lsp',
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return '(' .. count .. ')'
          end,
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          separator_style = 'thin',
          always_show_bufferline = true,
          offsets = {
            {
              filetype = 'NvimTree',
              text = 'File Explorer',
              text_align = 'center',
            },
          },
        },
      }
    end,
    -- pick and close buffer
    -- pick buffer
    vim.keymap.set('n', '<leader>bb', '<cmd>BufferLinePick<CR>', { silent = true }),
    -- close buffer
    vim.keymap.set('n', '<leader>bd', '<cmd>BufferLinePickClose<CR>', { silent = true })

  },
}
