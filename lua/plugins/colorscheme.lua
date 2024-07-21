return {
  'EdenEast/nightfox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('nightfox').setup {
      options = {
        transparent = true,
      },
      palettes = {
        carbonfox = {
          sel0 = '#444444',
        },
      },
    }

    vim.cmd.colorscheme 'carbonfox'
  end,
}
