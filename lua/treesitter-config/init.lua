local configs = require'nvim-treesitter.configs'
configs.setup {
ensure_installed = "maintained", -- Only use parsers that are maintained
highlight = { -- enable highlighting
  enable = false, 
},
indent = {
  enable = true, -- default is disabled anyways
}
}
