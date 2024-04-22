return {
  "nvim-neorg/neorg",
  dependencies = { "luarocks.nvim" },
  version = "*",
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.export"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/iCloud_Documents/Documents/notes",
            },
            default_workspace = "notes",
          },
        },
      },
    })

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
