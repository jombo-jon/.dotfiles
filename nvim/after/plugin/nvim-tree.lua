-- examples for your init.lua

-- empty setup using defaults
-- require("nvim-tree").setup()

-- -- OR setup with some options
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   view = {
--     adaptive_size = true,
--     mappings = {
--       list = {
--         { key = "u", action = "dir_up" },
--       },
--     },
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

require'nvim-tree'.setup {

    disable_netrw = true,
    hijack_netrw = true,
  hijack_directories = {
    enable = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    number = true,
    relativenumber = true,
    width = 30,
    height = 30,
    mappings = {
      list = {
        { key = "v", cb = tree_cb "vsplit" },
        { key = "h", action = "dir_up" },
        { key = "l", action = "dir_down" },
        { key = "<CR>", action = "edit_in_place" },
      },
    },
  },
  actions = {
    open_file = {
        window_picker = {
                enable = false,
        },
    },
  },
}

local function toggle_replace()
  local view = require "nvim-tree.view"
  if view.is_visible() then
    view.close()
  else
    require "nvim-tree".open_replacing_current_buffer()
  end
end

-- vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
-- vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
-- vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)
-- vim.keymap.set("n", "<leader>e", require("nvim-tree").open_replacing_current_buffer)

