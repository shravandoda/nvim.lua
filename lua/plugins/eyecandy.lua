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

  --------------------------------------------------------------------
  --- Tokyo Night Theme
  --------------------------------------------------------------------
  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('tokyonight').setup {
  --       style = 'storm',
  --       terminal_colors = true,
  --       styles = {
  --         comments = { italic = true },
  --         keywords = { italic = false, bold = true },
  --         functions = { italic = true },
  --         variables = {},
  --       },
  --     }
  --     vim.cmd 'colorscheme tokyonight-storm'
  --   end,
  -- },
  --
  --------------------------------------------------------------------
  --- Kanagawa Theme
  --------------------------------------------------------------------
  -- {
  --   'rebelot/kanagawa.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('kanagawa').setup {
  --       compile = false,
  --       undercurl = true,
  --       commentStyle = { italic = true },
  --       keywordStyle = { bold = true },
  --       statementStyle = { bold = true },
  --       theme = 'waves',
  --       terminalColors = true,
  --       background = {
  --         dark = 'dragon',
  --       },
  --     }
  --     vim.cmd 'colorscheme kanagawa'
  --   end,
  -- },
  --
  --------------------------------------------------------------------
  --- VSCode Theme (Trying to feel at home)
  --------------------------------------------------------------------

  -- {
  --   'Mofiqul/vscode.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('vscode').setup {
  --       italic_comments = true,
  --       italic_inlay_hints = true,
  --       underline_links = true,
  --       terminal_colors = true,
  --     }
  --
  --     vim.cmd 'colorscheme vscode'
  --   end,
  -- },
  -- --
  --------------------------------------------------------------------
  --- Catppuccin Theme
  --------------------------------------------------------------------

  -- {
  --   'catppuccin/nvim',
  --   priority = 1000,
  --   config = function()
  --     require('catppuccin').setup {
  --       flavor = 'mocha',
  --       background = {
  --         light = 'latte',
  --         dark = 'mocha',
  --       },
  --       show_end_of_buffer = true,
  --       term_colors = true,
  --       integrations = {
  --         cmp = true,
  --         gitsigns = true,
  --         notify = true,
  --         mini = {
  --           enabled = true,
  --           use_background = true,
  --         },
  --       },
  --     }
  --     vim.cmd.colorscheme 'catppuccin'
  --   end,
  -- },
  --
  --
  --
  --------------------------------------------------------------------
  --- Ayu Theme
  --------------------------------------------------------------------
  {
    'Shatur/neovim-ayu',
    lazy = false,
    priority = 1000,
    config = function()
      require('ayu').setup {
        mirage = true,
        terminal = true,
        comments = true,
        functions = true,
      }
      vim.cmd.colorscheme 'ayu'
    end,
  },

  --------------------------------------------------------------------
  -- Highlight todo, notes, etc in comments
  --------------------------------------------------------------------

  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  ---------------------------------------------------------------------
  --- Center the text in the middle of the screen
  ---------------------------------------------------------------------
  {
    {
      'shortcuts/no-neck-pain.nvim',

      config = function()
        require('no-neck-pain').setup {
          width = 170,
        }
      end,

      vim.keymap.set('n', '<leader>np', '<cmd>NoNeckPain<CR>', { desc = 'Toggle [N]o Neck [P]ain' }),
    },
  },
}
