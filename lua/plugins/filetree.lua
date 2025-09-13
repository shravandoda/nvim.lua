--------------------------------------------------

-- Author: Shravan Doda
-- Email: shravanbharatdoda@gmail.com
-- Github: github.com/shravandoda
-- Licence: MIT

--------------------------------------------------

----------------------------------------------------------------------
--- File Tree
----------------------------------------------------------------------

return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    lazy = false,
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
          show_hidden = true,
          natural_order = 'fast',
          case_sensitive = true,
          is_always_hidden = function(name, _)
            return name == '.git' or name == '..'
          end,
        },
        win_options = {
          wrap = true,
        },
        float = {
          padding = 5,
          max_width = 0.7,
          max_height = 0.7,
        },
      }
      vim.keymap.set('n', '-', '<cmd>Oil --float<CR>', { desc = 'Open parent directory' })
    end,
  },
}
