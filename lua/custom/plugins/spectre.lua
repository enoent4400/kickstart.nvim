return {
 {
   'nvim-pack/nvim-spectre',
   dependencies = {
     'nvim-lua/plenary.nvim',
   },
   config = function()
     require('spectre').setup({
       mapping = {
         ['toggle_line'] = {
           map = "dd",
           cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
           desc = "toggle current item"
         },
         ['run_replace'] = {
           map = "<leader>R",
           cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
           desc = "replace all"
         },
         ['run_current_replace'] = {
           map = "<leader>rc",
           cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
           desc = "replace current line"
         },
       },
     })

     -- Keymaps
     vim.keymap.set('n', '<leader>rp', '<cmd>lua require("spectre").open()<CR>', {
       desc = "[R]eplace with S[p]ectre"
     })
     vim.keymap.set('n', '<leader>rw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
       desc = "[R]eplace current [W]ord"
     })
     vim.keymap.set('n', '<leader>rf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
       desc = "[R]eplace in current [F]ile"
     })

     -- Timestamp replacement helper
     vim.keymap.set('n', '<leader>rt', function()
       require("spectre").open()
       vim.defer_fn(function()
         local old_date = vim.fn.input("Old date (YYYY-MM-DD): ")
         if old_date ~= "" then
           local pattern = old_date .. "T\\d\\d:\\d\\d:\\d\\d\\.\\d\\d\\dZ"
           vim.fn.feedkeys(pattern)
         end
       end, 100)
     end, {
       desc = "[R]eplace [T]imestamp"
     })
   end,
 }
}
