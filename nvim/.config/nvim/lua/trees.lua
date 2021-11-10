require'nvim-tree'.setup {
  update_cwd          = true,
  view = {
    width = 50,
    height = 30,
    side = 'right',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
