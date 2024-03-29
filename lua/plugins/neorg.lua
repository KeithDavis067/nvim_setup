return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/iCloud_Documents/Documents/notes",
          },
          default_workspace = "notes",
        },
      },
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.esupports.indent"] = {
        config = {
          format_on_escape = true,
        },
      },
      ["core.tempus"] = {},
      ["core.ui.calendar"] = {},
    },
  },
  dependencies = { { "nvim-lua/plenary.nvim" } },
}
