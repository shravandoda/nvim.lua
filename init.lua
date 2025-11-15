--------------------------------------------------

-- Author: Shravan Doda
-- Email: shravanbharatdoda@gmail.com
-- Github: github.com/shravandoda
-- Licence: MIT

--------------------------------------------------

if vim.g.vscode then
  require 'config.vscode'
else
  -- Import configurations
  require 'config.options'
  require 'config.keymaps'
  require 'config.autocmds'
  require 'config.lazy'
end
