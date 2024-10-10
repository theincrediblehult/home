return {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("nvim-tree").setup(
      {
        actions = {
          open_file = {
            quit_on_open = true,
            window_picker = {
              enable = false,
            },
          },
          change_dir = {
            enable = false,
          },
        },
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          -- width = 100,
          relativenumber = true,
          number = true,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }
    )
  end
}
