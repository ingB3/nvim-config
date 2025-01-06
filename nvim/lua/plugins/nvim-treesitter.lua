return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "python",
        "lua",
        "latex",
        "bash",
        "fish",
        "c",
        "cpp",
        "vim",
        "markdown",
        "markdown_inline",
        "make",
        "cmake",
        "csv",
        "json",
        "ssh_config",
        "toml",
        "yaml",
      },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
