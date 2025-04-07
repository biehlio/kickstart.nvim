return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
  config = function()
    require('neo-tree').setup {
      window = {
        position = 'right',
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- Show hidden files (dotfiles)
          hide_gitignored = false, -- (Optional) Show git-ignored files
        },
      },
      -- you can add additional neo-tree configuration options here
    }
    -- Optional key mapping to toggle neo-tree
    vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })
  end,
}
