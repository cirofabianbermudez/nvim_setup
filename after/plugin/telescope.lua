local builtin = require('telescope.builtin')
local utils = require('telescope.utils')
local opt = { noremap = true }

-- Change Telescope behavior
local behavior_on = false
function toggle_telescope()
    if not behavior_on then
      print("Telescope relative mode.")
      vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ cwd = utils.buffer_dir() }) end, {} )
      vim.keymap.set('n', '<leader>fg', function() builtin.live_grep({ cwd = utils.buffer_dir() }) end, {} )
    else
      print("Telescope standard mode.")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {} )
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {} )
    end
    behavior_on = not behavior_on
end

vim.api.nvim_set_keymap('n', '<leader>et', "<cmd>lua toggle_telescope()<CR>", opt)

-- Telescope remaps
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {} )
vim.keymap.set('n', '<leader>ff', builtin.find_files, {} )
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fr', builtin.registers, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, {})
vim.keymap.set('n', '<leader>fs', builtin.spell_suggest, {})

-- Load Telescope
local actions = require('telescope.actions')
local telescope = require('telescope')

-- Change key mapping for actions.select_vertical
telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-s>"] = actions.select_vertical
        -- Change "<C-j>" to the desired key combination
      },
      n = {
        ["<C-s>"] = actions.select_vertical
        -- Change "<C-j>" to the desired key combination
      }
    }
  }
}

