return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter_config = require("nvim-treesitter.configs")
    treesitter_config.setup({
      ensure_installed = {"c", "cpp", "lua", "html", "css", "javascript", "typescript", "rust"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
 
