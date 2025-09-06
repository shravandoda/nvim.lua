--------------------------------------------------

-- Author: Shravan Doda
-- Email: shravanbharatdoda@gmail.com
-- Github: github.com/shravandoda
-- Licence: MIT

--------------------------------------------------

----------------------------------------------------------------------
--  Eye Candy
----------------------------------------------------------------------

return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        compile = true,
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { bold = true },
        statementStyle = { bold = true },
        theme = 'wave',
        terminalColors = true,
        background = {
          dark = 'dragon',
        },
      }
      vim.cmd 'colorscheme kanagawa'
    end,
  },

  --------------------------------------------------------------------
  -- Highlight todo, notes, etc in comments
  --------------------------------------------------------------------

  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
