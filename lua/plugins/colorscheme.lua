vim.api.nvim_create_autocmd('LspTokenUpdate', {
  callback = function(args)
    local token = args.data.token
    if (token.type == 'type' or token.type == 'class') and token.modifiers.deduced then
      vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, '@lsp.typemod.class.deduced')
    elseif token.type == 'function' and token.modifiers.globalScope then
      vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, '@lsp.typemod.function.globalScope')
    end
  end,
})

return {
  'EdenEast/nightfox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    --local specs = require('nightfox.spec').load 'carbonfox'
    --local syn = specs.syntax

    require('nightfox').setup {
      options = {
        transparent = true,
        styles = {
          comments = 'italic',
          keywords = 'bold',
          types = 'bold',
        },
        modules = {
          treesitter = true,
        },
      },
      palettes = {
        carbonfox = {
          yellow = { base = '#d7cd5c', bright = '#ebdc7a', dim = '#a6a11e' },
          green = { base = '#84bf62', bright = '#9aeb6c', dim = '#629e3f' },
          orange = { base = '#e0ad3f', bright = '#f7d152', dim = '#d16e1d' },
          blue = { base = '#7092e0', bright = '#a1cfff', dim = '#6d78f3' },
          white = { base = '#dddddd', bright = '#ffffff', dim = '#bbbbbb' },
          sel0 = '#444444',
        },
      },
      specs = {
        carbonfox = {
          syntax = {
            type = 'green',
            func = 'blue.bright',
            number = 'yellow.dim',
            const = 'blue',
            conditional = 'blue',
            keyword = 'blue',
            preproc = '#999999',
            string = '#e39866',
            field = '#e17aeb',
          },
        },
      },
      groups = {
        all = {
          ['@function.builtin'] = { fg = 'palette.blue.bright' },
          ['@type.builtin'] = { fg = 'palette.blue' },
          ['@module'] = { fg = 'palette.white.dim' },
          ['@parameter'] = { fg = 'palette.white' },
          ['@lsp.type.method'] = { fg = 'palette.yellow.bright' },
          ['@lsp.typemod.type.defaultLibrary'] = { fg = 'palette.green' },
          ['@lsp.typemod.type.deduced'] = { link = 'keyword' },
          ['@lsp.typemod.class.defaultLibrary'] = { fg = 'palette.green' },
          ['@lsp.typemod.class.constructorOrDestructor'] = { link = '@lsp.type.method' },
          ['@lsp.typemod.class.deduced'] = { link = 'keyword' },
          ['@lsp.typemod.function.defaultLibrary'] = { link = '@lsp.type.method' },
          ['@lsp.typemod.function.globalScope'] = { link = '@function.builtin' },
          ['@keyword.directive.define'] = { link = 'preproc' },
          ['@keyword.directive'] = { link = 'preproc' },
        },
      },
    }

    vim.cmd.colorscheme 'carbonfox'
  end,
}
