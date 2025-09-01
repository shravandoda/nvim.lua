--------------------------------------------------

-- Author: Shravan Doda
-- Email: shravanbharatdoda@gmail.com
-- Github: github.com/shravandoda
-- Licence: MIT

--------------------------------------------------

----------------------------------------------------------------------
-- GIT SIGNS
----------------------------------------------------------------------

-- See `:help gitsigns` to understand what the configuration keys do
-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
}
